import numpy as np
import matplotlib.pyplot as plt



# Parameters
Nx, Ny = 10, 10     # Domain size (coarse units)
ratio = 2           # Grid refinement ratio nf/nc
xpatch_left = 0          #layers of coarse grid patched with fine grid in x-direction
xpatch_right = 2           #layers of coarse grid patched with fine grid in x-direction
ypatch_bottom = 0           #layers of coarse grid patched with fine grid in y-direction
ypatch_top = 0           #layers of coarse grid patched with fine grid in y-direction
xoverlap_left = 1
xoverlap_right = 1
yoverlap_bottom = 1
yoverlap_top = 1

#Coarse grid parameters
dx_coarse, dy_coarse = 1.0, 1.0
Nxc_tot = Nx 
Nyc_tot = Ny
x_split_left = Nxc_tot - xpatch_left
x_split_right = Nxc_tot - xpatch_right
y_split_bottom = Nyc_tot - ypatch_bottom
y_split_top = Nyc_tot - ypatch_top

x_coarse_start = max(x_split - overlap_x, 0)

Nxc = int(x_split / dx_coarse) + 1
Nyc = int(y_split / dx_coarse) + 1

#fine grid parameters
Nxf_tot = ratio * Nxc_tot - 1
Nyf_tot = ratio * Nyc_tot - 1
x_fine_start = max(x_split - overlap_x, 0)
y_fine_start = max(y_split - overlap_x, 0)
Nx_fine = int((Lx - x_fine_start) / dx_fine) + 1
Ny_fine = int(Ly / dy_fine) + 1




