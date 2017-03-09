#!/bin/bash

make clean
make build

rm cache_line_data

for i in $(seq 1 200);
do
	echo -n "$i " >> cache_line_data
	/usr/bin/time --format "%e" -a -o cache_line_data ./dimcache $i
done
