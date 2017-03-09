.PHONY: build clean

CFLAGS = -Wall -Wextra -ansi -pedantic

build: dimcache

dimcache: main.o utils.o
	gcc $(CFLAGS) $^ -o $@

main.o: main.c utils.h
	gcc $(CFLAGS) -c main.c -o main.o

utils.o: utils.c utils.h
	gcc $(CFLAGS) -c utils.c -o utils.o

clean:
	rm -rf dimcache main.o utils.o
