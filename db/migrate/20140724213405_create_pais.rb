class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
