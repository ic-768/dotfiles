#!/bin/bash

//for i in `seq -f %02g 1 10`
for i in `seq 1 212`
do
	wget "https://traitdunionrmstorage01.blob.core.windows.net/flipping-books/JeCompareEleve_FlippingBook/files/mobile/$i.jpg?210819140013"
done
