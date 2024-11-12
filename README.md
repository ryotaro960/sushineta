# README

## shops テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| password           | string | null: false |
| encrypted_password | string | null: false |
| shop_name          | string | null: false |
| shop_shiten        | string |             |
| shop_address       | string | null: false |
| shop_url           | string |             |
| cost_performance   | string | null: false |
| start_time         | string | null: false |
| end_time           | string | null: false |

### Association

- has_many :shop_holidays
- has_many :holidays, through: :shop_holidays
- has_many :sushinetas
- has_one_attached :shop_image


## holidays テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| days   | string | null: false, unique: true |

### Association

- has_many :shop_holidays
- has_many :holidays, through: :shop_holidays


## shop_holidays テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| shop_id    | integer | null: false |
| holiday_id | integer | null: false |

### Association

- belongs_to :shop
- belongs_to :holiday


## sushinetas テーブル

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| sushineta_name  | string  | null: false |
| price           | integer | null: false |
| pereod          | string  | null: false |

### Association

- belongs_to :shop
- has_one_attached :sushineta_image