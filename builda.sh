#!/bin/bash
gcc -g a.c
echo -n "get origin file length"
binsize=`du -b a.out |cut -f1 `
echo -n "...bin_size $binsize..." 
echo "ok"
echo -n "append symbol..."
nm a.out >>a.out
echo "ok"
echo -n "append mark..."
echo KISS>>a.out
echo "ok"
echo -n "append origin length..."
echo $binsize>>a.out
echo "ok"