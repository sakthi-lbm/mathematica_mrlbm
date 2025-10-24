import numpy as np
import matplotlib.pyplot as plt

Nx, Ny = 10, 10 # Domain size (coarse units)
overlap = 1 # Number of overlap layer
patch = 1   # Patch layer (coarse units)
grid_ratio = 2               # Refinement ratio

Nxc_total = Nx
Nyc_total = Ny

Nxf_total = grid_ratio*Nx - 1
Nyf_total = grid_ratio*Ny - 1

xsplit = Nxc_total - patch  #split location on coarse grid in x-direction
Nxc = xsplit + 1    #Number of coarse grid points including split location
Nyc = Nyc_total     #No split in y-direction

Nxf = (patch + overlap)*grid_ratio + 1    #Number of coarse grid points including split location
Nyc = Nyc_total     #No split in y-direction

xc_total = np.linspace(0, Nxc_total, Nxc_total)
yc_total = np.linspace(0, Nyc_total, Nyc_total)

xf_total = np.linspace(0, Nxc_total, Nxf_total)
yf_total = np.linspace(0, Nyc_total, Nyf_total)

# Plot grids
plt.figure(figsize=(10, 5))
plt.scatter(*np.meshgrid(xc_total, yc_total), color='red', s=12, label='Coarse Grid')
plt.scatter(*np.meshgrid(xf_total, yf_total), color='blue', s=4, label='Fine Grid')

plt.gca().set_aspect('equal')  
plt.xlabel('x')
plt.ylabel('y')
plt.title('2D Multi-Domain Grid for LBM (Coarse + Fine)')
plt.legend()
plt.grid(True)
# plt.show()
plt.savefig("grid2_ref.pdf", format='pdf')
plt.savefig("grid2_ref.png", format='png')