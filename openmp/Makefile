TARGET=streamcluster.out
TARGETOMP=streamclusteromp.out

all: src/streamcluster.cpp
	g++ -O3 \
		-std=gnu++0x \
		-pg \
		-g -Wall -fopenmp \
		-ftree-vectorize \
		-fno-tree-slp-vectorize \
		-fno-tree-loop-distribute-patterns \
		-ftree-loop-if-convert-stores \
		-fno-tree-pre \
		-ffast-math \
		-march=native \
	    -funroll-loops \
		-fprefetch-loop-arrays \
		-fpermissive \
		-fno-exceptions \
		-static-libgcc \
		-Wl,--hash-style=both,--as-needed \
		-L/usr/lib64 \
		-L/usr/lib \
		-o $(TARGET) \
		src/streamcluster.cpp

		mkdir -p bin

		chmod +x $(TARGET)
		mv $(TARGET) bin/$(TARGET)

omp: src/streamclusteromp.cpp
	g++ -O3 \
		-std=gnu++0x \
		-pg \
		-g -Wall -fopenmp \
		-ftree-vectorize \
		-fno-tree-slp-vectorize \
		-fno-tree-loop-distribute-patterns \
		-ftree-loop-if-convert-stores \
		-fno-tree-pre \
		-ffast-math \
		-march=native \
	    -funroll-loops \
		-fprefetch-loop-arrays \
		-fpermissive \
		-fno-exceptions \
		-static-libgcc \
		-Wl,--hash-style=both,--as-needed \
		-L/usr/lib64 \
		-L/usr/lib \
		-o $(TARGETOMP) \
		src/streamclusteromp.cpp

		mkdir -p bin

		chmod +x $(TARGETOMP)
		mv $(TARGETOMP) bin/$(TARGETOMP)
