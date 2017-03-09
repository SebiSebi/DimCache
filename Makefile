.PHONY: build clean

CFLAGS = -Wall -Wextra -ansi -pedantic

build: dimcache

dimcache: main.o
	gcc $(CFLAGS) main.o -o dimcache

main.o: main.c
	gcc $(CFLAGS) -c main.c -o main.o

clean:
	rm -rf dimcache main.o
