TARGET=streamcluster.out

all: src/streamcluster.cpp
	g++ -O3 \
		-g \
	  	-funroll-loops -fprefetch-loop-arrays \
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
