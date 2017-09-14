TARGET=streamcluster.out

all: src/streamcluster.cpp
	g++ -O3 \
		-std=c99 \
		-pg \
		-ftree-vectorize \
		-fno-tree-slp-vectorize \
		-fno-tree-loop-distribute-patterns \
		-ftree-loop-if-convert-stores \
		-fno-tree-pre \
		-ftree-vectorizer-verbose=10 \
		-fopt-info-vec-all \
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
