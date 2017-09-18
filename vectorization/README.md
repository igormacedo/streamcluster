#### Compilation flags ####
In order to compile for vector processors, some flags should be added to GCC.
-   `-ftree-vectorize`: this flag comes automaticaly when added the optimization `-O3` flag.
-   `-march=native`: this flag should include the vector processsor architecture flag, which could be any of `-msse -msse2 -msse3 -mssse3 -msse4 -msse4.1 -msse4.2 -mavx`, for example.
-   `-ftree-vectorizer-verbose`: include this flag to see output that helps debuging vectorized loops. example: `-ftree-vectorizer-verbose=2`
-   `-fopt-info-vec-all`
-   `-fopt-info-vec-optimized \`

Those flags were already added to the makefile.

#### Attempted vectorization of function pgain() ####

line 1118: not vectorized: control flow in loop.
line 1121: not vectorized: vector version will never be profitable.
line 1149: not vectorized: vector version will never be profitable.

#### References ####
0. <https://twiki.cern.ch/twiki/bin/view/CMSPublic/WorkBookWritingAutovectorizableCode#Which_code_can_be_auto_vectorize>
1.  Programming Guidelines for Vectorizing C/C++ Compilers. <http://www.drdobbs.com/programming-guidelines-for-vectorizing-c/184401611>. Accessed in 09/09/2017
2.  <http://www.cac.cornell.edu/education/training/ParallelFall2012/Vectorization.pdf>
3.  <https://felix.abecassis.me/2012/08/sse-vectorizing-conditional-code/>
4.  <https://gcc.gnu.org/wiki/summit2010?action=AttachFile&do=get&target=pop.pdf>
5.  <https://locklessinc.com/articles/vectorize/>
