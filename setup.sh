#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    echo "Please run as root (sudo $0)" >&2
    exit 1
fi

echo "installing jdk 8"
sudo apt-get install openjdk-8-jdk-headless 

echo "creating dependencies path"
mkdir ./dependencies

echo "downloading spark"
wget http://archive.apache.org/dist/spark/spark-3.1.1/spark-3.1.1-bin-hadoop3.2.tgz -O ./dependencies/spark.tgz
tar xf ./dependencies/spark.tgz -C ./dependencies