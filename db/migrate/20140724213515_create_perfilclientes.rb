class CreatePerfilclientes < ActiveRecord::Migration
  def change
    create_table :perfilclientes do |t|
      t.references :cliente, index: true
      t.references :perfil, index: true

      t.timestamps
    end
  end
end
