# README

<<<<<<< Updated upstream
## username Table
=======
<<<<<<< Updated upstream
This README would normally document whatever steps are necessary to get the
application up and running.
>>>>>>> Stashed changes

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false, unique: true |
| email　　　　　　　　 | string              | null: false               |
| encrypted_passwordpassword    | string              | null: false               |
| encrypted_password_Reenter | string                | null: false               |
| name_Chinese characters|string        | null: false         　　　 |
| name_Katakana　　  | string                | null: false               |
| date_ of_ birth　　　　| string              | null: false |

## product infomation Table

 
|Column　　　　　　　　　　|Type　　　　　　　　　　　　　|Options　　　　　　　　　　　　
|------　　　　　　　　　　|----　　　　　　　　　　　　　|------- 　　　　　　　　　　　　|
|images　　　　　　　　　　|string 　　　　　　　　　　　|null: false |
|product name　　　　　　|string 　　　　　　　　　　　|null: false |
|product description　　|string 　　　　　　　　　　　　|null: false |
|category　　　　　　　　　|string　　　　　　　　　　　　 |null: false |
|commodity condition　　|string 　　　　　　　　　　　　|null: false |
|shipping cost　　　　　　|string 　　　　　　　　　　　　|null: false |
|region of origin　　　　|string 　　　　　　　　　　　　|null: false |
|estimated shipping date|string　　　　　　　　　　  |null: false |
|selling price|string |null: false |

## purchase records Table
|Column　　　　　　　　　　　|Type　　　　　　　　　　　　　|Options|
|------　　　　　　　　　　　|----　　　　　　　　　　　　　|-------|
|post code　　　　　　　　　|string　　　　　　　　　　　　|null: false |
|prefectures　　　　　　　　|string　　　　　　　　　　　　|null: false |
|municipality　　　　　　　|string　　　　　　　　　　　　|null: false |
|adress　　　　　　　　　　　|string　　　　　　　　　　　　|null: false |
|building name　　　　　　　|string　　　　　　　　　　　|null: false |
|telephone number　　　　　|string　　　　　　　　　　　|null: false |
|user_infomation　　　　　　|string　　　　　　　　　　　　|null: false|
|purchase_infomation　　　　|string　　　　　　　　　　　　|null: false|

<<<<<<< Updated upstream
## shipping information　Table
|Column　　　　　　　　　　　　|Type　　　　　　　　　　　　|Options　　　　　　　　|
|------　　　　　　　　　　　　|----　　　　　　　　　　　　|-------　　　　　　　　|
|post code                 |string                  |null: false |
|prefectures               |string                  |null: false |
|municipality              |string                  |null: false |
|adress                    |string                  |null: false |
|building name             |string                  |null: false |
|telephone number          |string                  |null: false |
=======
* Database creation
=======
## users Table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false, unique: true |
| email　　　　　　　　 | string              | null: false, unique: true             |
| encrypted_password | string              | null: false               |
| name_chinese character|string        | null: false         　　　 |
|first_name_chinese character|string |null: false |
| name_Katakana　　  | string                | null: false               |
|first_name_Katakana　|string |null: false |
| date_of_birth　　　　| string              | null: false |

## products Table

 
|Column　　　　　　　　　　|Type　　　　　　　　　　　　　|Options　　　　　　　　　　　　
|------　　　　　　　　　　|----　　　　　　　　　　　　　|------- 　　　　　　　　　　　　|
|product_name　　　　　　|string 　　　　　　　　　　　|null: false |
|product_description　　|text　　　　　　　　　　　　|null: false |
|category_id　　　　　　　　|integer　　　　　　　　　　　 |null: false |
|commodity_condition_id　　|integer 　　　　　　　　　　　　|null: false |
|shipping_cost_id　　　　　　|integer　　　　　　　　　　　　|null: false |
|region_of_origin_id　　　|integer　　　　　　　　　　　　　　|null: false |
|estimated_shipping_date_id|integer　　　　　　　　　　  |null: false |
|sellingprice|integer |null: false |

## records Table
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

## items　Table
|Column　　　　　　　　　　　　|Type　　　　　　　　　　　　|Options　　　　　　　　|
|------　　　　　　　　　　　　|----　　　　　　　　　　　　|-------　　　　　　　　|
|post_code                 |string                  |null: false |
|prefectures               |string                  |null: false |
|municipality              |string                  |null: false |
|adress                    |string                  |null: false |
|building_name             |string                  |null: false |
|telephone_number          |string                  |null: false |
>>>>>>> Stashed changes
>>>>>>> Stashed changes



### Association
（ここに追記していく）
has_one：purchase records
has_many:product infomation
has_many:username 
has_one:shipping infomation

