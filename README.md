## StreamCluster Optimizations ##
This repository holds both the original code and optimizations made upon the StreamCluster algorithm present at the Parsec Benchmark 3.0. This code is developed for the Concurrent and Distribuited Programming course in the Computer and Automation Department (DCA) in the Federal Univesity of Rio Grande do Norte (UFRN).

The folder structure is as follows:
-   parsec-original
    -   Contains the original code distributed by parsec 3.0 and the `make` and `run` files.
-   vectorization \[in development]
    -   Contains code optimized for vector processors and respective `make` and `run` files.
-   mpi \[yet to be developed]
-   OpenMP \[yet to be developed]

#### Getting started ####

In order to compile and run the streamcluster, go into the folder which you want to test the optmization, and type
```
$ make
$./run.sh test
```

#### Profiling Analysis ####
The code is already compiled with the -pg flag, which allows for profiling with Gprof. In order to get the profiling analysis just run `./run.sh <input_option>`, we recommend using the "simlarge" or "native" input option, because the other options are executed in a very small time.

After the code is done executing, a file called `gmon.out` should be created at the same folder. Now, to get human readable information about the software, run the follwing command and the output will be saved at the text file `analysis_gprof.txt`:
```
gprof bin/streamcluster.out gmon.out > analysis_gprof.txt
```
A few of the folders will contain a README.md file which displays the profiling analysis for the native input.
