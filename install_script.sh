#!/bin/bash
​
 apt-get update
​
 apt-get -y upgrade
​
 apt-get install build-essential jq -y
​
 apt-get install libssl-dev
​
 apt install libseccomp-dev
​
 apt install pkg-config
​
wget https://golang.org/dl/go1.19.5.linux-amd64.tar.gz
​
 tar -xvf go1.19.5.linux-amd64.tar.gz
​
 mv go /usr/local
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
 rm -rf go1.19.5.linux-amd64.tar.gz
​

