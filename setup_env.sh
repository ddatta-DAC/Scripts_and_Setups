#!/bin/bash
#LOCAL MACHINE
#if pip not installed
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo apt-get install python-dev
sudo apt install libicu-dev
sudo apt-get install libgrib-api-dev
sudo apt-get install python-virtualenv
sudo apt-get install fort77


# Setup mongodb
# Ubuntu 16.04
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
cd ; cat /var/log/mongodb/mongod.log;
sudo service mongod restart;


#Donot use pip with sudo.
#On local machine as well
pip install --user pyproj
pip install --user matplotlib
pip install --user pygrib
pip install --user bson
pip install --user pymongo
pip install --user datetime
pip install --user numpy
pip install --user scipy
pip install --user pandas
pip install --user seaborn
pip install --user rpy2==2.7.2
pip install --user requests
pip install --user beautifulsoup
pip install --user sklearn
pip install --user networkx


#setup Tensorflow
pip install --user tensorflow
cd
mkdir Programs
cd Programs
mkdir tf_virtenv_1
virtualenv --system-site-packages ~/Programs/tf_virtenv_1/
source ~/Programs/tf_virtenv_1/bin/activate
# set up packages inside virtual environment
alias activate_tf="source ~/Programs/tf_virtenv_1/bin/activate"
deactivate
activate_tf
#move out of virtual environment
deactivate


