## usersテーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| password           | string  | null: false |
| encrypted_password | string  | null: false |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| last_name_kana     | string  | null: false |
| first_name_kana    | string  | null: false |
| birth_y            | integer | null: false |
| birth_m            | integer | null: false |
| birth_d            | integer | null: false |

### Association
- has_many :items
- has_many :orders
- belongs_to :birth_y (ActiveHash)
- belongs_to :birth_m (ActiveHash)
- belongs_to :birth_d (ActiveHash)


## itemsテーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| item_name    | string     | null: false                    |
| explanation  | text       | null: false                    |
| category     | integer    | null: false                    |
| condition    | integer    | null: false                    |
| delivery_fee | integer    | null: false                    |
| prefecture   | integer    | null: false                    |
| days_to_ship | integer    | null: false                    |
| price        | integer    | null: false                    |
| user         | references | null: false, foreign_key :true |

### Association
- belongs_to :user
- has_one :order
- belongs_to :category (ActiveHash)
- belongs_to :condition (ActiveHash)
- belongs_to :delivery_fee (ActiveHash)
- belongs_to :prefecture (ActiveHash)
- belongs_to :days_to_ship (ActiveHash)

## ordersテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key :true |
| item             | references | null: false, foreign_key :true |
| shipping_address | references | null: false, foreign_key :true |

## Association

- belongs_to :user
- belongs_to :item
- belongs_to :shipping_address


## shipping_addressesテーブル
| Column        | Type       | Options     |
| ------------- | ---------- | ------------|
| postal_code   | string     | null: false |
| prefecture    | integer    | null: false |
| city          | string     | null: false |
| address       | string     | null: false |
| building      | string     |             |
| phone_number  | string     | null: false |

### Association

- has_one :order
- belongs_to :prefecture (ActiveHash)
