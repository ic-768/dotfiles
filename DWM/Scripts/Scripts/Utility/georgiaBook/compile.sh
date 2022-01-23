#!/bin/bash

for i in `seq 120`
do
	convert -verbose "$i.jpg" file.pdf
done
