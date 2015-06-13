class AddTipoUsuarioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tipoousuario, :integer
  end
end
