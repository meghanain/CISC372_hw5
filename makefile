all: image image_omp
image:image.c image.h
	gcc -g image.c -o image -lm
image_omp:image_omp.c image.h
	gcc -g -fopenmp image_omp.c -o image_omp -lm
clean:
	rm -f image image_omp output.png
