class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
    t.string :email, null: false, unique: true
    t.string :encrypted_password, null: false
    t.string :shop_name, null: false
    t.string :shop_shiten
    t.string :shop_address, null: false
    t.string :shop_url
    t.string :cost_performance, null: false
    t.string :start_time, null: false
    t.string :end_time, null: false
    t.timestamps
    end
  end
end
