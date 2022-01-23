#!/bin/bash

for i in `seq 2`
do
	convert -verbose "$i.jpg" out.pdf
done
