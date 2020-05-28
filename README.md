# Snippet

Techpitにて公開されている [【Rails / Vue.js】Snippet アプリを作ってみよう！](https://www.techpit.jp/p/rails-vue-js-snippet) の写経用リポジトリです  
どの環境でも実行できるようにDocker化して開発しやすいようにカスタマイズしています  
また教材が公開された時には既に情報が古かったので [Vue.js](https://jp.vuejs.org/index.html) と [Vuetify](https://vuetifyjs.com/ja/) のバージョンは 2020年05月25日の最新バージョンで実装しています

![00_snippet](https://raw.githubusercontent.com/dodonki1223/image_garage/master/snippet/00_snippet.gif)

## 環境

環境については以下の通りである

| 環境    | バージョン  |
|:--------|:-----------:|
| Rails   | 6.0.2.1     |
| Ruby    | 2.6.5       |
| Bundler | 2.1.2       |
| SQLite  | 3.27.2      |
| Node.js | 12          |
| Yarn    | 12          |
| Vue.js  | 2.6.11      |
| Vuetify | 2.0         |

## 開発

基本的に Docker を使用して開発を行います
開発用に `snippet`、`runner` の2つのサービスを作成しているのでこの2つのサービスを使用して開発を行っていきます

### snippet を起動する

下記コマンドを実行後、[http://localhost:3000/](http://localhost:3000/) にアクセスしてください

```shell
$ docker-compose up snippet
```

### runnerを起動する

テストやマイグレーションやrakeタスクなどのコマンドを実行するためのサービスになります
ただしテストを実行する時は `RAILS_ENV=test bundle exec rspec --format progress` で実行すること

```shell
$ docker-compose run --rm runner
```

## その他

### 開発環境を削除する

コンテナ、イメージ、ボリューム、ネットワークをすべて一括で削除します

```shell
$ docker-compose down --rmi all --volumes
```

参考記事：[《滅びの呪文》Docker Composeで作ったコンテナ、イメージ、ボリューム、ネットワークを一括完全消去する便利コマンド - Qiita](https://qiita.com/suin/items/19d65e191b96a0079417)
