#!/bin/bash
​
sudo apt-get update
​
sudo apt-get -y upgrade
​
sudo apt-get install build-essential jq -y
​
sudo apt-get install libssl-dev
​
sudo apt install libseccomp-dev
​
sudo apt install pkg-config
​
wget https://golang.org/dl/go1.19.5.linux-amd64.tar.gz
​
sudo tar -xvf go1.19.5.linux-amd64.tar.gz
​
sudo mv go /usr/local
​
mkdir -p go/src/github.com
mkdir go/bin
​
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin:$GOBIN
​
echo "" >> ~/.bashrc
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export GOBIN=$GOPATH/bin' >> ~/.bashrc
echo 'export PATH=$PATH:/usr/local/go/bin:$GOBIN' >> ~/.bashrc
. ~/.bashrc
​
sudo rm -rf go1.19.5.linux-amd64.tar.gz
​
