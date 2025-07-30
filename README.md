# AWS CDK in Dockerコンテナ

## 参考情報

- [AWS CDKをDocker環境で実行する方法 \#docker\-compose \- Qiita](https://qiita.com/nasuvitz/items/ccfe780f7ef89753b74a)
- [AWS CDK実行環境をDockerで構築する \(Python\)](https://zenn.dev/kwashizzz/articles/aws-cdk-in-docker)

```ps
# Dockerfile ファイルをビルドして、aws-cdk 実行環境イメージを作成する
docker build --tag aws-cdk .
```

```ps
# aws-cdk 実行環境イメージのコンテナを実行し、bashでコンテナ内に入る
# exit コマンドによりコンテナを終了・破棄する
docker container run --rm --name cdk -w /workspace -v ${pwd}:/workspace -v ${home}/.aws:/root/.aws:ro -it aws-cdk /bin/bash

# Windowsホストとのバインドは、ローカルストレージのアクセスが極端に遅くなる
# ホスト側のプロジェクトをバインドせず、git clone からプロジェクトを取得する場合はこちら
# 環境変数はコンテナに入ってから設定する（ex: export VAR='value'）
docker container run --rm --name cdk -w /workspace -v ${home}/.aws:/root/.aws:ro -it aws-cdk /bin/bash
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
