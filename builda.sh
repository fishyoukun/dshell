#!/bin/bash
gcc -g a.c
echo "get origin file length"
binsize=`du -b a.out |cut -f1 `
echo "append symbol"
nm a.out >>a.out
echo "append mark"
echo KISS>>a.out
echo "append origin length"
echo $binsize>>a.out