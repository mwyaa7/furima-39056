# README

## users Table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false |
| email　　　　　　　　 | string              | null: false , unique: true|
| encrypted_password    | string              | null: false               |
| name_chinese＿characters|string        | null: false         　　　 |
|first_name_chinese＿characters|string        |null: false|
| name_katakana　　  | string                | null: false               |
|first_name_katakana|string                  |null: false |
| date_of_birth　　　　| date              | null: false |

t.references :users,foreign_key: true
### Association
has_many:products

## products Table

 
|Column　　　　　　　　　　|Type　　　　　　　　　　　　　|Options　　　　　　　　　　　　
|------　　　　　　　　　　|----　　　　　　　　　　　　　|------- 　　　　　　　　　　　　|
|product_name　　　　　　|string 　　　　　　　　　　　  |null: false |
|product_description　　|text 　　　　　　　　　　　　  |null: false |
|category_id　　　　　　　　|integer　　　　　　　　　　　|null: false |
|commodity_condition_id　　|integer 　　　　　　　　　 |null: false |
|shipping_cost_id　　　　　　|integer　　　　　　　　　　|null: false |
|prefecture_id　　　      |integer　　　　　　　　　　　|null: false |
|estimated_shipping_date_id|integer　　　　　　　　　 |null: false |

### Association
belongs_to:user

## purchase_records Table
|Column　　　　　　　　　　　|Type　　　　　　　　　　　　　|Options|
|------　　　　　　　　　　　|----　　　　　　　　　　　　　|-------|
|user　　　　　　　　　      |string　　　　　　　　　　　　|null: false|
|product　　　             |string　　　　　　　　　　　　|null: false|
### Association
has_one:shipping infomation

## shipping information　Table
|Column　　　　　　　　　　　　|Type　　　　　　　　　　　　|Options　　　　　　　　|
|------　　　　　　　　　　　　|----　　　　　　　　　　　　|-------　　　　　　　　|
|post_code                 |string                  |null: false |
|prefectures               |string                  |null: false |
|municipality              |string                  |null: false |
|adress                    |string                  |null: false |
|building_name　　　　　　　|string　　　　　　　　　　　|unique: true |
|telephone_number　　　　　|string　　　　　　　　　　　|null: false |
### Association
belongs_to:purchase_record





