# README

## username Table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false, unique: true |
| email　　　　　　　　 | string              | null: false               |
| password           | string              | null: false               |
| pasword（Reenter）  | string                | null: false               |
| name（Chinese characters）|string        | null: false         　　　 |
| name（Katakana）    | string                | null: false               |
| date of birth　　　　| string              | null: false |

##product infomation Table

 
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

## purchase record Table
|Column　　　　　　　　　　　|Type　　　　　　　　　　　　　|Options|
|------　　　　　　　　　　　|----　　　　　　　　　　　　　|-------|
|card information　　　　　|string　　　　　　　　　　　　|null: false |
|date of expiry　　　　　　|string　　　　　　　　　　　　|null: false |
|security code　　　　　　　|string　　　　　　　　　　　　|null: false |
|post code　　　　　　　　　|string　　　　　　　　　　　　|null: false |
|prefectures　　　　　　　　|string　　　　　　　　　　　　|null: false |
|municipality　　　　　　　|string　　　　　　　　　　　　|null: false |
|adress　　　　　　　　　　　|string　　　　　　　　　　　　|null: false |
|building name　　　　　　　|string　　　　　　　　　　　|null: false |
|telephone number　　　　　|string　　　　　　　　　　　|null: false |

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
has_one：purchase record