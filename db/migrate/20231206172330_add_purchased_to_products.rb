class AddPurchasedToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :purchased, :boolean, default: false
  end
end
