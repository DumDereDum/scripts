#!/bin/bash

cd ~/

mkdir dnn
cd dnn

mkdir datasets
mkdir models
mkdir venvs

sudo apt-get install python3 python3-dev python3-setuptools python3-pip

cd venvs
python3 -m venv opencv_dnn_venv
source opencv_dnn_venv/bin/activate
cd ..

git clone https://github.com/openvinotoolkit/open_model_zoo.git
cd open_model_zoo
git remote add aprigarina https://github.com/APrigarina/open_model_zoo.git
git fetch aprigarina
git checkout ac_opencv_configs_ocv_backend
cd tools/accuracy_checker
pip install --upgrade --force-reinstall .
cd ..
cd model_tools
python3 setup.py install
cd ~/dnn

cd models
omz_downloader --name alexnet
omz_downloader --name common-sign-language-0001
omz_downloader --name deblurgan-v2
cd ..

