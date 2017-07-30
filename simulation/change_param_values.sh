#!/bin/bash

#read parameters from mixed_params.csv and change all the node-sim files.

params=($(grep '@P' mixed_params.csv | cut -d, -f2))
values=($(grep '@P' mixed_params.csv | cut -d, -f3))


for i in ${!params[@]}; do
	kw=${params[$i]}
	val=${values[$i]}
	echo $kw = $val
	find -type f -name '[0-9]*\.sim' -exec sed -i "s;\($kw\"[ ]*\).*;\1 \t $val;g" {} \;
done


