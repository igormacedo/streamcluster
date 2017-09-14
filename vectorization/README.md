#### Compilation flags ####
In order to compile for vector processors, some flags should be added to GCC.
-   `-ftree-vectorize`: this flag comes automaticaly when added the optimization `-O3` flag.
-   `-march=native`: this flag should include the vector processsor architecture flag, which could be any of `-msse -msse2 -msse3 -mssse3 -msse4 -msse4.1 -msse4.2 -mavx`, for example.
-   `-ftree-vectorizer-verbose`: include this flag to see output that helps debuging vectorized loops. example: `-ftree-vectorizer-verbose=2`
-   `-fopt-info-vec-missed`
-   `-fopt-info-vec-optimized \`

Those flags were already added to the makefile.

#### References ####
1.  Programming Guidelines for Vectorizing C/C++ Compilers. <http://www.drdobbs.com/programming-guidelines-for-vectorizing-c/184401611>. Accessed in 09/09/2017
2.  <http://www.cac.cornell.edu/education/training/ParallelFall2012/Vectorization.pdf>
3.  <https://felix.abecassis.me/2012/08/sse-vectorizing-conditional-code/>
4.  <https://gcc.gnu.org/wiki/summit2010?action=AttachFile&do=get&target=pop.pdf>
5.  <https://locklessinc.com/articles/vectorize/>
