
## ツールの名前

To do ism (タスク管理アプリ ：画像添付可)

## 簡単な説明
画像添付もできる、タスク管理アプリです。



## 動作確認環境

- Macbook Pro macOS 10.14.5
- MyCentOS内
- Google Chrome 


## 使用した技術要素

- Homebrew　（パッケージ管理システム）
- rbenv 1.1.2 (rubyのバージョン管理)
- ruby 2.5.1

- Rails 5.2.3
- Bundler 2.0.2
- Node.js v12.2.0
- postgres (PostgreSQL) 11.4

- gem追加 （Gemfile内: slim-rails,html2slim,bootstrap,ransack,kaminari)

- Active Storage （画像ファイルアップロード用）

## 機能

- タスク作成
- タスク検索
- タスクに画像添付
- その他、削除・更新


## セットアップ手順

```bash
$ macOSにて,Homebrewをインストール。
$ brew install rbenv    （Homebrew経由でrbenvをインストール。）
$ rbenv install 2.5.1   （Rubyをインストール。）
$ rbenv global 2.5.1
$ gem update --system
$ gem install bundler
$ gem install rails -v 5.2.1
$ brew install node   (Node.jsをインストール。)
$ brew install postgresql   (postgresqlをインストール。）

$ brew services start postgresql   (postgresqlを起動)
$ rails new todoism -d postgresql (アプリケーション雛形作成)
$ db:create  (データベース作成)
$ bin/rails s (サーバー起動)

- Gemfileに各gemを追記 -

$ bundle (gem適用)
$ bin/rails g model Task name:string description:text  (モデル作成)
$ bin/rails db:migrate  (tasksテーブル作成)
$ bin/rails g controller tasks index show new edit  (コントローラー作成)
$ bin/rails g migration ChangeTasksNameNotNull  (NOT NULL制約のマイグレーションファイルを作成)
$ bin/rails active_storage:install  (Active Storageの準備) 
$ bin/rails db:migrate (データベース反映)
$ bin/rails g kaminari:views bootstrap4  (ページネーションのデザイン調整)
```

## 全体の設計・手順

1. Rails でCRUD機能備えた雛形アプリ作成
2. 検索機能追加
3. ページネーション機能追加
4. エラーメッセージを日本語に翻訳
5. Active storageで写真添付機能追加 （herokuによるアプリ公開の際にAWSのS3を利用）
6. bootstrapとcssでデザインを調整

 

## 作者
https://github.com/kohei-10



