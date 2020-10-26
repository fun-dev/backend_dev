GO_CURRENT_VERSION=go1.15.3.linux-amd64.tar.gz
curl -LO https://golang.org/dl/$GO_CURRENT_VERSION
sudo tar -C /usr/local -xzvf $GO_CURRENT_VERSION
rm $GO_CURRENT_VERSION
GOPATH=/usr/local/go
echo 'export PATH=$PATH:$GOPATH' >> ~/.bashrc

