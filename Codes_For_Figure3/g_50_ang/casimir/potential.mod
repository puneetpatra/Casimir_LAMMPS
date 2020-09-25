# NOTE: This script can be modified for different pair styles 

# Choose potential

#### CHANGE HERE
pair_style     	hybrid/overlay table lookup 57600 tersoff tersoff lj/cut/coul/cut 10.0 120.0
pair_coeff		* * tersoff 1 SiC.tersoff C NULL
pair_coeff		* * tersoff 2 SiC.tersoff NULL Si
pair_coeff 		1 2 table tmpwire.table LJCUT
pair_coeff		1 2 lj/cut/coul/cut 0.00347 3.76395
#### CHANGE HERE


# Setup neighbor style
neighbor        2.0 bin
neigh_modify    every 1 check yes exclude type 1 1 page 100000 one 10000
timestep		0.001




