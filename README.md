# 環境構築
以下のコマンドでクローンとコンテナの構築をします。  
前もってgitとdockerとdocker-composeをインストールして下さい。
```
docker-compose up -d
```
## jupyter notebook
以下のコマンドを入力するとコマンドライン上にURLが発行されるので、ブラウザでアクセスする。
```
jupyter notebook --ip=0.0.0.0 --allow-root
```
