#!/bin/bash
sudo modprobe v4l2loopback exclusive_caps=1 && ffmpeg -f x11grab -r 15 -s 1440x900 -i :0.0+0,0 -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video1

