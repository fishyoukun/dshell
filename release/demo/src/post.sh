#!/bin/bash
echo -n "get origin file length"
binsize=`du -b $1 |cut -f1 `
echo -n "...bin_size $binsize..." 
echo "ok"
echo -n "append symbol..."
cat $2 >>$1
echo "ok"
echo -n "append mark..."
echo "KISS">>$1
echo "ok"
echo -n "append origin length..."
echo $binsize>>$1
echo "ok"
echo -n "copy a.out..."
cp $1 ../out/
echo "ok"