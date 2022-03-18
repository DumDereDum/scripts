#!/bin/bash

cd ~/dnn

#sudo apt-get install python-dev
#sudo apt-get install python3-dev
#sudo apt install libpython3.8-dev

#cd venvs
#source opencv_dnn_venv/bin/activate
#cd ..


mkdir opencv_4x
cd opencv_4x
mkdir build

#sudo apt-get install python-dev
#sudo apt-get install python3-dev
#sudo apt install libpython3.8-dev

echo "<== OpenCV ==>"
git clone https://github.com/opencv/opencv.git
git checkout 4.x


echo "<== Cmake ==>"
cd build
cmake -D \
	-DCMAKE_BUILD_TYPE=RELEASE \
	-DPYTHON3_PACKAGES_PATH=~/dnn/venvs/opencv_dnn_venv/lib/python3.8/site-packages \
	-DPYTHON3_NUMPY_INCLUDE_DIRS=~/dnn/venvs/opencv_dnn_venv/lib/python3.8/site-packages/numpy/core/include \
	-DPYTHON3_INCLUDE_DIR=~/dnn/venvs/opencv_dnn_venv/include \
	../opencv

echo "<== Build Install ==>"
sudo make install


