# Running steps

1. `bash dnn_setup.sh`
2. `cd ~/`
3. `sudo mount -t cifs -o username=<username> <link> datasets`
4. `cd <path/to/repo>/scripts/OpenCV/dnn/`
5. `bash alexnet.sh` or others


# Result folders
```
dnn
└─ datasets       (folder for data)
└─ local_datasets (folder for annotations)
└─ models         (folder for models)
└─ open_model_zoo (omz library)
└─ venvs          (folder for python virtual environments)
```
