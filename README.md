# README

## users Table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false |
| email　　　　　　　　 | string              | null: false , unique: true|
| encrypted_password    | string              | null: false               |
| name_chinese_characters|string        | null: false         　　　 |
|first_name_chinese＿characters|string        |null: false|
| name_katakana　　  | string                | null: false               |
|first_name_katakana|string                  |null: false |
| date_of_birth　　　　| date              | null: false |


### Association
has_many :products
has_many :purchase_records

## products Table

 
|Column　　　　　　　　　　|Type　　　　　　　　　　　　　|Options　　　　　　　　　　　　
|------　　　　　　　　　　|----　　　　　　　　　　　　　|------- 　　　　　　　　　　　　|
|product_name　　　　　　|string 　　　　　　　　　　　  |null: false |
|product_description　　|text 　　　　　　　　　　　　  |null: false |
|category_id　　　　　　　　|integer　　　　　　　　　　　|null: false |
|commodity_condition_id　　|integer 　　　　　　　　　 |null: false |
|shipping_cost_id　　　　　　|integer　　　　　　　　　　|null: false |
|prefecture_id　　　      |integer　　　　　　　　　　　|null: false |
|product_cost　　　　　　　|integer　　　　　　　　　　　　|null: false|
|estimated_shipping_date_id|integer　　　　　　　　　 |null: false |
|user　　　　　　　　　      |references　　　　　　　　　　　　|null: false, foreign_key: true |

### Association
belongs_to :user
has_one :purchase_record


## purchase_records Table
|Column　　　　　　　　　　　|Type　　　　　　　　　　　　　|Options|
|------　　　　　　　　　　　|----　　　　　　　　　　　　　|-------|
|user　　　　　　　　　      |references　　　　　　　　　　　　|null: false, foreign_key: true |
|product　　　             |references　　　　　　　　　　　　|null: false, foreign_key: true |
### Association
has_one:shipping_infomation
belongs_to :user
belongs_to :product

## addresses
|Column　　　　　　　　　　　　|Type　　　　　　　　　　　　|Options　　　　　　　　|
|------　　　　　　　　　　　　|----　　　　　　　　　　　　|-------　　　　　　　　|
|post_code                 |string                  |null: false |
|prefecture_id               |integer                 |null: false |
|municipality              |string                  |null: false |
|adress                    |string                  |null: false |
|building_name　　　　　　　|string　　　　　　　　　　　| -------|
|telephone_number　　　　　|string　　　　　　　　　　　|null: false |
|purchase_record        |references　　　　　　　　　　　　|null: false, foreign_key: true |
### Association
belongs_to :purchase_record





