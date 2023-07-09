# README

## username Table

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

## shipping information　Table
|Column　　　　　　　　　　　　|Type　　　　　　　　　　　　|Options　　　　　　　　|
|------　　　　　　　　　　　　|----　　　　　　　　　　　　|-------　　　　　　　　|
|post code                 |string                  |null: false |
|prefectures               |string                  |null: false |
|municipality              |string                  |null: false |
|adress                    |string                  |null: false |
|building name             |string                  |null: false |
|telephone number          |string                  |null: false |



### Association
（ここに追記していく）
has_one：purchase records
has_many:product infomation
has_many:username 
has_one:shipping infomation

