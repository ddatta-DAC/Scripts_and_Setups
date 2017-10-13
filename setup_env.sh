#!/bin/bash
#LOCAL MACHINE
#if pip not installed
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

#Donot use pip with sudo.
#On local machine as well

pip install --user pygrib
pip install --user pymongo
pip install --user datetime
pip install --user numpy
pip install --user scipy
pip install --user pandas
pip install --user seaborn
pip install --user rpy2==2.7.2
pip install --user matplotlib
pip install --user requests
pip install --user beautifulsoup
