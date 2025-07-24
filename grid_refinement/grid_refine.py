import numpy as np
import vtk
from vtk.util import numpy_support

# Parameters
Lx, Ly = 9, 9
x_split_left, x_split_right = 2, 7
y_split_bottom, y_split_top = 2, 7
n = 2  # Refinement ratio

def generate_multi_domain_grid():
    """Generate grid coordinates for all domains"""
    # Coarse grid (central region)
    x_coarse = np.linspace(x_split_left, x_split_right, int(x_split_right - x_split_left) + 1)
    y_coarse = np.linspace(y_split_bottom, y_split_top, int(y_split_top - y_split_bottom) + 1)
    
    # Fine grid parameters
    dx_fine = 1.0 / n
    overlap = 1.0  # 1 coarse unit overlap
    
    # Left fine grid
    x_fine_left = np.linspace(0, x_split_left + overlap, int((x_split_left + overlap)/dx_fine) + 1)
    y_fine_left = np.linspace(0, Ly, int(Ly/dx_fine) + 1)
    
    # Right fine grid
    x_fine_right = np.linspace(x_split_right - overlap, Lx, int((Lx - (x_split_right - overlap))/dx_fine) + 1)
    y_fine_right = y_fine_left.copy()
    
    # Bottom fine grid
    x_fine_bottom = np.linspace(0, Lx, int(Lx/dx_fine) + 1)
    y_fine_bottom = np.linspace(0, y_split_bottom + overlap, int((y_split_bottom + overlap)/dx_fine) + 1)
    
    # Top fine grid
    x_fine_top = x_fine_bottom.copy()
    y_fine_top = np.linspace(y_split_top - overlap, Ly, int((Ly - (y_split_top - overlap))/dx_fine) + 1)
    
    return {
        'coarse': (x_coarse, y_coarse),
        'fine_left': (x_fine_left, y_fine_left),
        'fine_right': (x_fine_right, y_fine_right),
        'fine_bottom': (x_fine_bottom, y_fine_bottom),
        'fine_top': (x_fine_top, y_fine_top)
    }

def create_continuous_fields(grid_data):
    """Generate continuous physical fields across all domains"""
    # First collect all unique points
    point_map = {}
    unique_points = []
    current_id = 0
    
    for domain in grid_data.values():
        x_arr, y_arr = domain
        for x in x_arr:
            for y in y_arr:
                # Use rounded coordinates to merge points at interfaces
                pt_key = (round(x, 6), round(y, 6))
                if pt_key not in point_map:
                    point_map[pt_key] = current_id
                    unique_points.append((x, y, 0.0))  # z=0 for 2D
                    current_id += 1
    
    # Generate continuous fields based on physical position
    velocity = np.zeros((len(unique_points), 3))
    density = np.zeros(len(unique_points))
    
    for idx, (x, y, _) in enumerate(unique_points):
        # Parabolic velocity profile (example)
        y_norm = 2*y/Ly - 1
        velocity[idx] = [0.1*(1 - y_norm**2), 0.0, 0.0]
        
        # Linear density gradient (example)
        density[idx] = 1.0 - 0.05*x/Lx
    
    return unique_points, velocity, density, point_map

def create_vtk_grid(grid_data):
    """Create VTK unstructured grid with continuous fields"""
    # Get continuous fields and unique points
    unique_points, velocity, density, point_map = create_continuous_fields(grid_data)
    
    # Create VTK data structures
    points = vtk.vtkPoints()
    cells = vtk.vtkCellArray()
    
    # Create data arrays
    velocity_array = vtk.vtkFloatArray()
    velocity_array.SetName("Velocity")
    velocity_array.SetNumberOfComponents(3)
    
    density_array = vtk.vtkFloatArray()
    density_array.SetName("Density")
    
    domain_array = vtk.vtkIntArray()
    domain_array.SetName("DomainID")
    
    # Add points and field data
    for pt in unique_points:
        points.InsertNextPoint(pt)
    
    for v in velocity:
        velocity_array.InsertNextTuple(v)
    
    for d in density:
        density_array.InsertNextValue(d)
    
    # Domain identifiers
    domains = {
        'coarse': 0,
        'fine_left': 1,
        'fine_right': 2,
        'fine_bottom': 3,
        'fine_top': 4
    }
    
    # Create cells for each domain
    quad = vtk.vtkQuad()
    for domain_name, domain_id in domains.items():
        x_arr, y_arr = grid_data[domain_name]
        nx, ny = len(x_arr), len(y_arr)
        
        for i in range(nx-1):
            for j in range(ny-1):
                # Get point IDs for cell corners
                pt1 = (round(x_arr[i], 6), round(y_arr[j], 6))
                pt2 = (round(x_arr[i+1], 6), round(y_arr[j], 6))
                pt3 = (round(x_arr[i+1], 6), round(y_arr[j+1], 6))
                pt4 = (round(x_arr[i], 6), round(y_arr[j+1], 6))
                
                # Create cell using mapped point IDs
                quad.GetPointIds().SetId(0, point_map[pt1])
                quad.GetPointIds().SetId(1, point_map[pt2])
                quad.GetPointIds().SetId(2, point_map[pt3])
                quad.GetPointIds().SetId(3, point_map[pt4])
                cells.InsertNextCell(quad)
                domain_array.InsertNextValue(domain_id)
    
    # Create unstructured grid
    grid = vtk.vtkUnstructuredGrid()
    grid.SetPoints(points)
    grid.SetCells(vtk.VTK_QUAD, cells)
    
    # Add field data
    grid.GetPointData().AddArray(velocity_array)
    grid.GetPointData().AddArray(density_array)
    grid.GetCellData().AddArray(domain_array)
    
    return grid

def write_vtk_file(grid, filename="multi_domain_lbm"):
    """Write VTK unstructured grid to file"""
    writer = vtk.vtkXMLUnstructuredGridWriter()
    writer.SetFileName(f"{filename}.vtu")
    writer.SetInputData(grid)
    writer.SetDataModeToBinary()  # For smaller file size
    writer.Write()

# Main workflow
grid_data = generate_multi_domain_grid()
vtk_grid = create_vtk_grid(grid_data)
write_vtk_file(vtk_grid)

print("Successfully created multi_domain_lbm.vtu with continuous fields")