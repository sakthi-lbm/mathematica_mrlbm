import numpy as np
import matplotlib.pyplot as plt

def generate_multi_domain_grid(Lx, Ly, x_split, n):
    """
    Generate 2D multi-domain LBM grid with coarse and fine regions.
    
    Parameters:
        Lx, Ly   : Domain size (coarse grid units).
        x_split  : Split point in x-direction (coarse grid units).
        n        : Refinement ratio (fine grid spacing = coarse/n).
    
    Returns:
        (x_coarse, y_coarse) : Coarse grid coordinates.
        (x_fine, y_fine)     : Fine grid coordinates.
    """
    # Coarse grid (x < x_split)
    dx_coarse, dy_coarse = 1.0, 1.0
    Nx_coarse = int(x_split / dx_coarse) + 1  # +1 to include x_split
    Ny_coarse = int(Ly / dy_coarse) + 1
    
    x_coarse = np.linspace(0, x_split, Nx_coarse)
    y_coarse = np.linspace(0, Ly, Ny_coarse)
    
    # Fine grid (x >= x_split - overlap)
    dx_fine, dy_fine = dx_coarse / n, dy_coarse / n
    overlap = 1 * dx_coarse  # 1 coarse unit overlap
    
    # Fine grid starts at (x_split - overlap) to ensure overlap
    x_fine_start = max(x_split - overlap, 0)
    Nx_fine = int((Lx - x_fine_start) / dx_fine) + 1
    Ny_fine = int(Ly / dy_fine) + 1
    
    x_fine = np.linspace(x_fine_start, Lx, Nx_fine)
    y_fine = np.linspace(0, Ly, Ny_fine)
    
    return (x_coarse, y_coarse), (x_fine, y_fine)

# Parameters
Lx, Ly = 9, 9  # Domain size (coarse units)
x_split = 8       # Split point (coarse units)
n = 2               # Refinement ratio

# Generate grids
coarse, fine = generate_multi_domain_grid(Lx, Ly, x_split, n)
x_coarse, y_coarse = coarse
x_fine, y_fine = fine

# Plot grids
plt.figure(figsize=(10, 5))
plt.scatter(*np.meshgrid(x_coarse, y_coarse), color='red', s=10, label='Coarse Grid')
plt.scatter(*np.meshgrid(x_fine, y_fine), color='blue', s=5, label='Fine Grid')
plt.axvline(x=x_split, linestyle='--', color='black', label='Split Point')
plt.gca().set_aspect('equal')  
plt.xlabel('x')
plt.ylabel('y')
plt.title('2D Multi-Domain Grid for LBM (Coarse + Fine)')
plt.legend()
plt.grid(True)
# plt.show()
plt.savefig("grid_ref.pdf", format='pdf')
# plt.savefig("grid_ref.png", format='png')

# Print grid info
print(f"Coarse Grid: {len(x_coarse)} x {len(y_coarse)} points")
print(f"Fine Grid: {len(x_fine)} x {len(y_fine)} points")
print(f"Overlap: {n} fine points per coarse point")


def generate_multi_domain_grid_both_sides(Lx, Ly, x_split_left, x_split_right, n):
    """
    Generate 2D grid with fine patches on both left and right sides.
    
    Parameters:
        Lx, Ly          : Domain size (coarse grid units).
        x_split_left    : Left split point (start of coarse region).
        x_split_right   : Right split point (end of coarse region).
        n               : Refinement ratio (fine grid spacing = coarse/n).
    
    Returns:
        (x_coarse, y_coarse) : Coarse grid coordinates.
        (x_fine_left, y_fine_left) : Left fine grid coordinates.
        (x_fine_right, y_fine_right) : Right fine grid coordinates.
    """
    # Coarse grid (middle region)
    dx_coarse, dy_coarse = 1.0, 1.0
    Nx_coarse = int((x_split_right - x_split_left) / dx_coarse) + 1  # Points in coarse region
    Ny_coarse = int(Ly / dy_coarse) + 1
    
    x_coarse = np.linspace(x_split_left, x_split_right, Nx_coarse)
    y_coarse = np.linspace(0, Ly, Ny_coarse)
    
    # Left fine grid (x=0 to x_split_left + overlap)
    dx_fine, dy_fine = dx_coarse / n, dy_coarse / n
    overlap = 1 * dx_coarse  # 1 coarse unit overlap
    
    # Left fine grid ends at x_split_left + overlap
    Nx_fine_left = int((x_split_left + overlap) / dx_fine) + 1
    Ny_fine = int(Ly / dy_fine) + 1
    
    x_fine_left = np.linspace(0, x_split_left + overlap, Nx_fine_left)
    y_fine_left = np.linspace(0, Ly, Ny_fine)
    
    # Right fine grid (x=x_split_right - overlap to Lx)
    x_fine_right_start = max(x_split_right - overlap, 0)
    Nx_fine_right = int((Lx - x_fine_right_start) / dx_fine) + 1
    
    x_fine_right = np.linspace(x_fine_right_start, Lx, Nx_fine_right)
    y_fine_right = np.linspace(0, Ly, Ny_fine)
    
    return (x_coarse, y_coarse), (x_fine_left, y_fine_left), (x_fine_right, y_fine_right)

# Parameters
Lx, Ly = 9, 9              # Domain size (coarse units)
x_split_left = 2            # Start of coarse region
x_split_right = 7           # End of coarse region
n = 2                       # Refinement ratio

# Generate grids
coarse, fine_left, fine_right = generate_multi_domain_grid_both_sides(
    Lx, Ly, x_split_left, x_split_right, n
)
x_coarse, y_coarse = coarse
x_fine_left, y_fine_left = fine_left
x_fine_right, y_fine_right = fine_right

# Plot grids
plt.figure(figsize=(10, 5))
plt.scatter(*np.meshgrid(x_coarse, y_coarse), color='red', s=10, label='Coarse Grid')
plt.scatter(*np.meshgrid(x_fine_left, y_fine_left), color='blue', s=5, label='Left Fine Grid')
plt.scatter(*np.meshgrid(x_fine_right, y_fine_right), color='green', s=5, label='Right Fine Grid')
plt.axvline(x=x_split_left, linestyle='--', color='black', label='Left Split')
plt.axvline(x=x_split_right, linestyle='--', color='gray', label='Right Split')
plt.gca().set_aspect('equal')
plt.xlabel('x')
plt.ylabel('y')
plt.title('2D Multi-Domain Grid with Fine Patches on Both Sides')
plt.legend()
plt.grid(True)
plt.savefig("grid_ref_both_sides.pdf", format='pdf')
# plt.savefig("grid_ref_both_sides.png", format='png')

# Print grid info
print(f"Coarse Grid: {len(x_coarse)} x {len(y_coarse)} points")
print(f"Left Fine Grid: {len(x_fine_left)} x {len(y_fine_left)} points")
print(f"Right Fine Grid: {len(x_fine_right)} x {len(y_fine_right)} points")
print(f"Overlap: {n} fine points per coarse point")

