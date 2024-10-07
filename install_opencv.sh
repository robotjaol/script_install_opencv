#!/bin/bash

# Check for root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or use sudo"
  exit
fi

# Update package list
apt update && apt upgrade -y

# Install dependencies
apt install -y build-essential cmake git pkg-config \
libjpeg-dev libtiff5-dev libjasper-dev libpng-dev \
libavcodec-dev libavformat-dev libswscale-dev \
libv4l-dev libxvidcore-dev libx264-dev \
libgtk-3-dev libatlas-base-dev gfortran \
python3-dev python3-numpy

# Install Python package if Python OpenCV is needed
if command -v python3 &> /dev/null; then
    pip3 install opencv-python opencv-python-headless
    echo "OpenCV installed for Python."
fi

cd /opt
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

# Build OpenCV from source
cd opencv
mkdir build
cd build
cmake -DOPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules -DWITH_TBB=ON -DWITH_V4L=ON -DWITH_OPENGL=ON -DWITH_GTK=ON -DBUILD_EXAMPLES=ON -DBUILD_opencv_python3=ON ..
make -j$(nproc)
make install
ldconfig

echo "OpenCV installed for C++ and Python."
