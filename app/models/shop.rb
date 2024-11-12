class Shop < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true
  validates :encrypted_password, presence: true
  validates :shop_name, presence: true
  validates :shop_shiten
  validates :shop_address, presence: true
  validates :shop_url
  validates :cost_performance, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
