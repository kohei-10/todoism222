
## ツールの名前

To do ism (タスク管理アプリ ：画像添付可)

## 簡単な説明
タスクに画像添付もできる、タスク管理アプリです。



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

- gem追加 （Gemfile内）
-- slim-rails
-- html2slim
-- bootstrap
-- ransack
-- kaminari

- Active Storage （画像ファイルアップロード用）

## 機能

- タスク作成
- タスク検索
- タスクに画像添付
- その他、削除・更新


## セットアップ手順

```bash
$ macOSにて,Homebrewをインストール。
$ Homebrew経由でrbenvをインストール。
$ rbenvを使ってRubyをインストール。
$ gemをインストール。
$ gemコマンドでBundler,railsをインストール。
$ HomebrewでNode.js,postgresqlをインストール。

$ postgresqlを起動
$ "rails new todoism -d postgresql" でアプリケーション作成
$ "db:create" でデータベース作成
$ "bin/rails s" でサーバー起動

$ Gemfileに各gemを追記し、bundleを実行

$ "bin/rails g model Task name:string description:text" でモデル作成
$ "bin/rails db:migrate" でtasksテーブルを作成
$ "bin/rails g controller tasks index show new edit" でコントローラー作成
$ "bin/rails g migration ChangeTasksNameNotNull" で別途マイグレーションファイルを作成 （NOT NULL制約の追加）
$ "bin/rails active_storage:install" でActive Storageの準備 →"bin/rails db:migrate"でデータベースに反映
$ "bin/rails g kaminari:views bootstrap4" でページネーションのデザイン調整
```

## 全体の設計・手順

1. 
2. 
3. 


## 作者
https://github.com/kohei-10



