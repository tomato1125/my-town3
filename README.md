# README

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