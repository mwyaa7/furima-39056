# README

## users Table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false, unique: true |
| email　　　　　　　　 | string              | null: false , unique: true|
| encrypted_password    | string              | null: false               |
| name_chinese characters|string        | null: false         　　　 |
|first_name_chinese characters|string        |null: false|
| name_katakana　　  | string                | null: false               |
|first_name_katakana|string                  |null: false |
| date_of_birth　　　　| string              | null: false |

## products Table

 
|Column　　　　　　　　　　|Type　　　　　　　　　　　　　|Options　　　　　　　　　　　　
|------　　　　　　　　　　|----　　　　　　　　　　　　　|------- 　　　　　　　　　　　　|
|product_name　　　　　　|string 　　　　　　　　　　　  |null: false |
|product_description　　|text 　　　　　　　　　　　　  |null: false |
|category_id　　　　　　　　|integer　　　　　　　　　　　|null: false |
|commodity_condition_id　　|integer 　　　　　　　　　 |null: false |
|shipping_cost_id　　　　　　|integer　　　　　　　　　　|null: false |
|region_of_origin_id　　　|integer　　　　　　　　　　　|null: false |
|estimated_shipping_date_id|integer　　　　　　　　　 |null: false |
|selling_price             |integer                |null: false |

## purchase_records Table
|Column　　　　　　　　　　　|Type　　　　　　　　　　　　　|Options|
|------　　　　　　　　　　　|----　　　　　　　　　　　　　|-------|
|post_code　　　　　　　　　|string　　　　　　　　　　　　|null: false |
|prefectures　　　　　　　　|string　　　　　　　　　　　　|null: false |
|municipality　　　　　　　|string　　　　　　　　　　　　|null: false |
|adress　　　　　　　　　　　|string　　　　　　　　　　　　|null: false |
|building_name　　　　　　　|string　　　　　　　　　　　|null: false |
|telephone_number　　　　　|string　　　　　　　　　　　|null: false |
|user_infomation　　　　　　|string　　　　　　　　　　　　|null: false|
|purchase_infomation　　　　|string　　　　　　　　　　　　|null: false|

## shipping information　Table
|Column　　　　　　　　　　　　|Type　　　　　　　　　　　　|Options　　　　　　　　|
|------　　　　　　　　　　　　|----　　　　　　　　　　　　|-------　　　　　　　　|
|post_code                 |string                  |null: false |
|prefectures               |string                  |null: false |
|municipality              |string                  |null: false |
|adress                    |string                  |null: false |




### Association
（ここに追記していく）
has_one：purchase records
has_many:product infomation
has_many:username 
has_one:shipping infomation

