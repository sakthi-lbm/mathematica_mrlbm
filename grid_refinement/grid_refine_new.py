import numpy as np
import matplotlib.pyplot as plt

# Parameters
NX = 5
NY = 5
ratio  = 2
patch = 2
overlap = 1

#Coarse grid parameters
Nxc_tot = NX
Nyc_tot = NY
xsplit = Nxc_tot - patch

print(xsplit)

Nxc = xsplit + overlap
Nyc = Nyc_tot

xc_start = 1
xc_end = xsplit + overlap
yc_start = 1
yc_end = Nyc

#Fine grid parameters
Nxf_tot = ratio * NX - 1
Nyf_tot = ratio * NY - 1

Nxf = ratio * patch  + 1
Nyf = Nyf_tot

xf_start = xsplit
xf_end = Nxc_tot
yf_start = 1
yf_end = NY

# print(xc_start, xc_end, Nxc)
# print(yc_start, yc_end, Nyc)

# print(xf_start, xf_end, Nxf)
# print(yf_start, yf_end, Nyf)

x_coarse = np.linspace(xc_start, xc_end, Nxc)
y_coarse = np.linspace(yc_start, yc_end, Nyc)

x_fine = np.linspace(xf_start, xf_end, Nxf)
y_fine = np.linspace(yf_start, yf_end, Nyf)



plt.figure(figsize=(10, 5))
plt.scatter(*np.meshgrid(x_coarse, y_coarse),facecolors='white', edgecolors='blue', s=30, label='Coarse Grid')
plt.scatter(*np.meshgrid(x_fine, y_fine), color='red', s=5, label='Right Fine Grid')
plt.gca().set_aspect('equal')
plt.xlabel('x')
plt.ylabel('y')
plt.title('2D Multi-Domain Grid with Fine Patches on right')
plt.legend()
plt.text(2.8,3.5, '1', fontsize=8, color='black')
plt.text(2.8,3, '2', fontsize=8, color='black')
plt.text(2.8,5, '3', fontsize=8, color='black')
plt.text(2.8,1, '4', fontsize=8, color='black')
plt.grid(True,linewidth=0.3,linestyle='--',color='gray', alpha=0.5)
# plt.tick_params(labelbottom=False, labelleft=False,bottom=False, left=False)
# for spine in plt.gca().spines.values():
#     spine.set_visible(False)
plt.savefig("test.pdf", format='pdf')




