class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :article
      t.string :image_name
      t.decimal :price, precision: 8, scale: 2
      t.integer :balance, default: 0
      t.timestamps null: false
    end
  end
end
