class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.references :cliente, index: true
      t.references :tipocontacto, index: true
      t.string :contacto

      t.timestamps
    end
  end
end
