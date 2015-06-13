class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :direccion
      t.string :ruc
      t.string :correo
      t.string :telefono
      t.boolean :estado
      t.string :contacto
      t.boolean :flagCriollo
      t.boolean :flagMarino
      t.boolean :flagChifa
      t.boolean :flagVegetariano
      t.boolean :flagPastas
      t.references :user, index: true, foreign_key: true
      t.references :distrito, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
