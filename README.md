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
