# minikube setup コマンド
```bash
cd kubernetes/minikube/wsl2 && sh all_install.sh
```


# 環境構築方法
[esa](https://cloud-fun.esa.io/posts/145)

# 必須環境
- Linux (WSL2:20.04可)
- docker (A)
- kubernetes
    -  minkube: Goでk8sのAPIを作るだけなら最小限構成でいいはず
    - kind(どうしてもやりたい人向け)
        -  dind(docker in docker 18.09)

  
Linuxにdockerが導入できたら自動でkindベースのkubernetesが導入される[スクリプト](https://github.com/fun-dev/fun-cloud-api/blob/master/build/container/Dockerfile.dev)(1)

# 開発環境
- Go (v1.15)
- SQL(使うかわからんけどとりあえず)
- kubernetes client-go (v1.15.0)
- webフレームワーク ([Gin docs](https://gin-gonic.com/ja/))
- webサーバ (Apache：ginのデフォルト)
- エディタ(WSL2使うならVSCodeのRemote wslがおすすめ)

# 備考
(A) dockerをインストール後serviceをスタートする必要あり
```bash sudo
service docker start
```

# 参考文献
(1) [kubernetes自動導入スクリプト](https://github.com/fun-dev/fun-cloud-api/blob/master/build/container/Dockerfile.dev)
(2) [dockerのインストール](https://github.com/HamaguchiKazuki/fcp_playground_feature/blob/master/deployments/vm/docker-install.sh)
(3) [minikubeのセットアップ](https://kubernetes.io/docs/tasks/tools/)
