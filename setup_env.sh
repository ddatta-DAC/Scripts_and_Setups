#!/bin/bash
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
sh Miniconda2-latest-Linux-x86_64.sh 

conda install -c conda-forge pygrib
conda install -c conda-forge requests-ftp
conda install --channel https://conda.anaconda.org/anaconda mysql-python
conda install -c conda-forge dateutils


#Tensorflow
conda install -c conda-forge tensorflow 




