#!/bin/activate

cd ~/dnn
source venvs/opencv_dnn_venv/bin/activate

accuracy_check \
        -c open_model_zoo/models/public/deblurgan-v2/accuracy-check.yml \
        -m models/public/deblurgan-v2/ \
        -s datasets \
        -a local_datasets/ \
        -d open_model_zoo/data/dataset_definitions.yml \
        -ss 10 \
        -td cpu \
        -tf opencv \
        -tb ocv


