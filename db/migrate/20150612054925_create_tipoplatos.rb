class CreateTipoplatos < ActiveRecord::Migration
  def change
    create_table :tipoplatos do |t|
      t.string :name
      t.string :description
      t.string :codigo

      t.timestamps null: false
    end
  end
end
