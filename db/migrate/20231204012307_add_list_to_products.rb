class AddListToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :list, null: false, foreign_key: true
  end
end
