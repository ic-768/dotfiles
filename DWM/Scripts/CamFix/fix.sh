#!/bin/bash

cd /home/ic768 || exit;
cd /home/ic768/bcwc_pcie || exit;
make;
sudo make install;
sudo depmod;
sudo modprobe facetimehd;
