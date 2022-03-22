#!/bin/bash

cd ~/dnn


echo -e "\n<== Python venv ==>\n"

cd venvs
source opencv_dnn_venv/bin/activate
pip install numpy -y
#sudo apt-get install python-dev
#sudo apt-get install python3-dev 
cd ..

echo -e "\n<== OpenCV ==>\n"

mkdir opencv_4x
cd opencv_4x
mkdir build

git clone https://github.com/opencv/opencv.git
git checkout 4.x


echo -e "\n<== Cmake ==>\n"

cd build
cmake -D \
	-DCMAKE_BUILD_TYPE=RELEASE \
	-DPYTHON3_EXECUTABLE=~/dnn/venvs/opencv_dnn_venv/bin/python3 \
	-DPYTHON3_NUMPY_INCLUDE_DIRS=~/dnn/venvs/opencv_dnn_venv/lib/python3.8/site-packages/numpy/core/include \
	-DPYTHON3_PACKAGES_PATH=~/dnn/venvs/opencv_dnn_venv/lib/python3.8/site-packages \
	../opencv


echo -e "\n<== Build Install ==>\n"

sudo make install
