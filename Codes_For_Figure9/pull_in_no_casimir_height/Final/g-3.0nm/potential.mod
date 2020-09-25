# NOTE: This script can be modified for different pair styles 

# Choose potential

#### CHANGE HERE
pair_style     	hybrid/overlay tersoff tersoff lj/cut/coul/cut 10.0 100.0
pair_coeff 		* * tersoff 1 BNC.tersoff C NULL
pair_coeff 		* * tersoff 2 BNC.tersoff NULL C
pair_coeff		1 2 lj/cut/coul/cut 0.00485 4.01
#### CHANGE HERE


# Setup neighbor style
neighbor        2.0 bin
neigh_modify    every 1 check yes exclude type 1 1 page 100000 one 10000
timestep		0.001



