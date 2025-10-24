import numpy as np

# Parameters
NX = 20
NY = 20
split_idx = NX-4
refinement_ratio = 2

# Generate grid coordinates
# Coarse grid (0 to NX-4)
coarse_x = np.linspace(0, 0.8, split_idx + 1)  # 0 to NX-4 inclusive
coarse_y = np.linspace(0, 1, NY)

# Fine grid (NX-4 to NX-1)
fine_x = np.linspace(0.8, 1.0, (NX - split_idx) * refinement_ratio)
fine_y = np.linspace(0, 1, NY * refinement_ratio)

def write_vts(filename, x, y, data=None):
    """Write structured grid data to VTK XML file"""
    nx, ny = len(x), len(y)
    with open(filename, 'w') as f:
        f.write(f"""<?xml version="1.0"?>
<VTKFile type="StructuredGrid" version="0.1" byte_order="LittleEndian">
  <StructuredGrid WholeExtent="0 {nx-1} 0 {ny-1} 0 0">
    <Piece Extent="0 {nx-1} 0 {ny-1} 0 0">
      <Points>
        <DataArray type="Float32" NumberOfComponents="3" format="ascii">
""")
        # Write grid points (z=0 for 2D)
        for yj in y:
            for xi in x:
                f.write(f"{xi} {yj} 0 ")
        f.write("""
        </DataArray>
      </Points>""")
        
        if data:
            f.write("""
      <PointData>
        <DataArray type="Float32" Name="{}" format="ascii">
          {}
        </DataArray>
      </PointData>""".format(data['name'], ' '.join(map(str, data['values'].flatten()))))
        
        f.write("""
    </Piece>
  </StructuredGrid>
</VTKFile>""")

# Write separate files
write_vts("coarse_grid.vts", coarse_x, coarse_y)
write_vts("fine_grid.vts", fine_x, fine_y)

# Create a ParaView collection file
with open("grids.pvd", "w") as f:
    f.write("""<?xml version="1.0"?>
<VTKFile type="Collection" version="0.1">
  <Collection>
    <DataSet part="0" file="coarse_grid.vts"/>
    <DataSet part="1" file="fine_grid.vts"/>
  </Collection>
</VTKFile>""")