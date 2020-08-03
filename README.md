# アプリ名

My Town



# アプリについて

「My Town」はあなたの地元や今住んでいる場所の好きなところを共有する投稿サイトです。

## 位置情報付きの投稿機能
- ユーザーは画像（１枚）、コメントをつけて投稿ができます。
- 投稿時、「都道府県」、「カテゴリー」を選ぶことができ、その情報を基に投稿が分類分けされます。
- 投稿時、マップに地名を入力し検索することで共有したい場所の位置情報を確認でき、登録地名を入力することができます。
- 登録した情報は各投稿の詳細にて確認することが可能です。
!(https://gyazo.com/c16375831f92e41319b7dc779ed836ca)
!(https://gyazo.com/c4ff2101ee31a101a34c5c4d1e17824e)
!(https://gyazo.com/37740af5006d5d02773d0257589a00fc)

## 投稿検索機能
- 投稿した情報は文字列検索、カテゴリー別検索、県別検索が可能です。

!(https://gyazo.com/cb55827022892c7ee0eda58f95df74e3)
!(https://gyazo.com/c72c9f2fdf93a86fbca6ea9c084c77dc)
!(https://gyazo.com/94b0e619ddbe16a838b96005f73605a4)



# 本番環境
- URL: https://my-town3.herokuapp.com/
- ユーザー名（テスト）: guest
- e-mail（テスト）: guest@mail.com
- password（テスト）: guest1111



# 作成した経緯
私の地元は長崎県で、地元のことは好きなのですが、地元のことを質問された時、意外と知らないことが多いなと感じることがよくあります。
日常の些細なことや個人的な好みなどを投稿できるサイトを作ることで、地元に関する多角的な情報を一度に収集でき、より理解が深まると
感じて作成しました。

また、昨今コロナウイルス等の影響もあり、リモートワークが全国的に広まっている現状があります。長年、東京一極集中問題が取り沙汰されて
おりますが、今後リモートワーク等含め、住む場所に拘らず様々な場所で仕事ができる環境が整っていくのではないかと感じております。
そういった時に地方の良いところに目を向けて、その地域に来てもらう手段としてこのアプリを使って欲しいと感じております。

現時点では実装しておりませんが、アプリ内に求人情報などを投稿できるフォームを作成して、より地域貢献できるようなアプリ開発を目指して
おります。



# 工夫したところ
ユーザーがより直感的にアプリを使ってもらえるように表示はできるだけシンプルにし、必要な情報を必要最低限表示できるように実装しました。



# 作成時の課題とそれをどのように解決したか
作成時の課題はエラー解決を行う上で問題箇所の特定を把握することでした。作成初期段階はエラー出現時、エラーを解決するまでにかなりの時間を要しました。原因はエラー文やエラーログを細かく見れていなかったためです。作成を進める中でエラーが出現した際は、エラー文やエラーログを徹底的に確認することに注力しました。エラー文やログには問題を解決するためのヒントが記載されていることがほとんどなので、エラー文を基に検索を行ったり、自分の中で仮説を立てて解決を試みるうちに以前よりもエラー解決がスムーズにできるようになったと実感しております。エラー文を基に問題を分解・抽出し、各問題に対してどのような対処が有効かを考えることが重要だと感じております。



#  開発環境
Ruby/Ruby on Rails/JavaScript/jQuery/Haml/Sass/MySQL/Github/AWS/heroku/Visual Studio Code

- ruby '2.6.5'
- ruby on rails '6.0.0'
- gem 'devise'
- gem 'mini_magick'
- gem 'carrierwave'
- gem 'geocoder'
- gem 'seed-fu'
- gem 'kaminari'
- gem 'dotenv-rails'



# 今後実装したい機能
- 投稿時、選択画像をjavascriptでプレビュー表示させる
- mapの検索精度の向上（現状、精度が低い）
- お気に入り登録機能の実装
- 絞り込み検索機能の実装
- バリデーションの設定・テストコードの記述



# DB設計

## usersテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :likes
- has_many :posts
- has_many :prefectures, through :user_prefectures

## user_prefecturesテーブル

|column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|prefecture|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :prefecture

## prefecturesテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :cities
- has_many :users, through :users_prefectures
- has_many :posts

## citiesテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :posts
- belongs_to :prefecture

## categoryテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :posts


## postsテーブル

|column|Type|Options|
|------|----|-------|
|title|string|null: false|
|content|text|null: false|
|image|text|null: false|
|category|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
|prefecture|references|null: false, foreign_key: true|
|city|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :prefecture
- belongs_to :city
- belongs_to :category
- has_many :like

## commentsテーブル

|column|Type|Options|
|------|----|-------|
|content|text|
|user|references|null: false, foreign_key: true|
|post|references|null: false, foreign_key: true|
|prefecture|references|null: false, foreign_key: true|
|city|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post

## likesテーブル

|column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|posts|references|null: false, foreign_key: true, dependent: :destroy|

### Association
- belongs_to :user
- belongs_to :post
* ...