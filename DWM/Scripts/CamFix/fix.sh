#!/bin/bash

cd /home/ic768 ;
cd bcwc_pcie;
make;
sudo make install;
sudo depmod;
sudo modprobe -r bdc_pci;
sudo modprobe facetimehd;
