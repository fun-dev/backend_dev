echo "Install Docker"
sh install_docker.sh
sh permission_docker.sh
echo "Install minikube"
sh install_minikube.sh
echo "Install go"
sh install_go.sh
echo "Please reboot wsl"