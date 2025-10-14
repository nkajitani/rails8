# Rails 8 Blog Application

Ruby on Rails 8を使用したブログアプリケーションです。画像付きの記事投稿機能を持つCMSシステムとして設計されています。

## 概要

このアプリケーションは以下の機能を提供します：

- 記事の作成、編集、削除、表示
- 画像アップロード機能
- 管理者認証システム（Devise）
- 日本語対応
- レスポンシブデザイン対応

## 技術スタック

### フレームワーク・ライブラリ
- **Ruby on Rails**: 8.0.3
- **Ruby**: (Gemfile.lockで確認可能)
- **Database**: MySQL (Trilogy adapter)
- **Web Server**: Puma

### 主要Gem
- **Devise**: ユーザー認証
- **CarrierWave**: 画像アップロード
- **Kaminari**: ページネーション
- **Rails-i18n**: 国際化対応

### 開発・テストツール
- **RSpec**: テストフレームワーク
- **Factory Bot**: テストデータ生成
- **RuboCop**: コード品質管理
- **Brakeman**: セキュリティ脆弱性検査
- **Better Errors**: 開発環境でのエラー表示改善

## データベース構造

### Posts (記事)
- title: 記事タイトル
- body: 記事本文
- image: 画像ファイル
- published_at: 公開日時

### Comments (コメント)
- post_id: 記事への外部キー
- body: コメント本文
- name: 投稿者名

### Users (ユーザー)
- Deviseによる標準的なユーザー管理テーブル

## 機能

### フロントエンド
- 記事一覧表示
- 記事詳細表示

### 管理画面 (/admin)
- 管理者ログイン・ログアウト
- 管理者新規登録
- 記事のCRUD操作
- プロファイル管理
- ダッシュボード

## セットアップ

### 前提条件
- Ruby (推奨バージョンは.ruby-versionファイルを参照)
- MySQL 5.6.4以上
- Node.js (アセット管理用)

### インストール

1. リポジトリをクローン
```bash
git clone <repository-url>
cd rails8
```

2. 依存関係をインストール
```bash
bundle install
```

3. データベース設定
```bash
# config/database.ymlを環境に合わせて設定
# デフォルト設定:
# - ユーザー名: root
# - パスワード: mysql
# - ホスト: 127.0.0.1 (DB_HOST環境変数で変更可能)
```

4. データベース作成・マイグレーション
```bash
rails db:create
rails db:migrate
rails db:seed
```

5. アセットのプリコンパイル（本番環境の場合）
```bash
rails assets:precompile
```

### 起動

開発環境での起動:
```bash
rails server
# または
./bin/dev
```

アプリケーションは `http://localhost:3000` でアクセス可能になります。

## 主要なエンドポイント

### フロントエンド
- `/` - トップページ（現在は設定されていません）
- `/posts/:id` - 記事詳細

### 管理画面
- `/admin` - 管理画面ダッシュボード
- `/admin/sign_in` - 管理者ログイン
- `/admin/sign_up` - 管理者新規登録
- `/admin/posts` - 記事管理
- `/admin/profile` - プロファイル管理

### 開発用ツール
- `/letter_opener` - メール確認ツール（開発環境のみ）

## 開発

### テスト実行
```bash
# RSpecテスト実行
bundle exec rspec

# 特定のテストファイル実行
bundle exec rspec spec/models/post_spec.rb
```

### コード品質チェック
```bash
# RuboCop実行
bundle exec rubocop

# セキュリティチェック
bundle exec brakeman
```

### デバッグ
- Better Errorsが開発環境で有効
- `binding.irb`でブレークポイント設定可能

## 設定

### タイムゾーン
- アプリケーション: 東京時間 (JST)
- データベース: ローカル時間

### 言語設定
- デフォルト言語: 日本語 (ja)
- Deviseメッセージも日本語化済み

### 画像アップロード
- CarrierWaveによる画像アップロード機能
- 設定は `app/uploaders/image_uploader.rb` で管理

## ディレクトリ構造

```
rails8/
├── app/
│   ├── controllers/
│   │   ├── admin/          # 管理画面コントローラー
│   │   └── users/          # Deviseカスタムコントローラー
│   ├── models/             # データモデル
│   ├── views/              # ビューテンプレート
│   └── uploaders/          # CarrierWaveアップローダー
├── config/
│   ├── environments/       # 環境別設定
│   ├── initializers/       # 初期化設定
│   └── locales/           # 言語ファイル
├── db/
│   └── migrate/           # マイグレーションファイル
└── spec/                  # テストファイル
```

## ライセンス

このプロジェクトのライセンスについては、プロジェクト管理者にお問い合わせください。

## 貢献

バグレポートや機能リクエストは、GitHubのIssuesにお願いします。プルリクエストも歓迎します。
