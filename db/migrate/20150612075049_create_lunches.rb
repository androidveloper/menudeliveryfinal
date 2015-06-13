class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.decimal :pricemenu
      t.integer :quantity
      t.date :fecha
      t.references :tipoplato, index: true, foreign_key: true
      t.references :tipomenu, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
