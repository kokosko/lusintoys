class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :adress
      t.string :phone
      t.string :email
      t.decimal :sum, precision: 8, scale: 2
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
