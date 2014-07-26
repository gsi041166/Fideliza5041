class CreateTipocontactos < ActiveRecord::Migration
  def change
    create_table :tipocontactos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
