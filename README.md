# AWS CDK in Dockerコンテナ

## 参考情報

- [AWS CDKをDocker環境で実行する方法 \#docker\-compose \- Qiita](https://qiita.com/nasuvitz/items/ccfe780f7ef89753b74a)

```ps
# Dockerfile ファイルをビルドして、aws-cdk 実行環境イメージを作成する
docker build --tag aws-cdk .
```

```ps
# aws-cdk 実行環境イメージのコンテナを実行し、bashでコンテナ内に入る
# exit コマンドによりコンテナを終了・破棄する
docker container run --rm --name cdk -it aws-cdk /bin/bash
```

```ps
# nodejs v22 と npm v10 のインストールを確認する
node -v
npm -v
```

```ps
# aws-cli v2 のインストールを確認する
aws --version
```

```ps
# aws-cdk v2 のインストールを確認する
cdk --version
```
