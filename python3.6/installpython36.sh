wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz
gunzip Python-3.6.0.tgz
tar -xvf Python-3.6.0.tar
cd Python-3.6.0
./configure
make
make test
sudo make install

