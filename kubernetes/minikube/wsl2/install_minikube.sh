sudo apt update
cat <<EOS
Download the list of requirements.
curl
EOS

sudo apt install -y curl

cat <<EOS
Install kubectl binary with curl
Detail URL: https://kubernetes.io/docs/tasks/tools/install-kubectl/
EOS

curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

kubectl version --client

cat <<EOS
Install minikube binary with curl
Detail URL: https://minikube.sigs.k8s.io/docs/start/
EOS

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64

cat <<EOS
wsl2 + docker cgroup error
detail URL: https://github.com/microsoft/WSL/issues/4189
EOS

if [ ! -d /sys/fs/cgroup/systemd]; then
    sudo mkdir /sys/fs/cgroup/systemd && sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd
fi

minikube start