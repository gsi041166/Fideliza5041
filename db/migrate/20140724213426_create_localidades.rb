class CreateLocalidades < ActiveRecord::Migration
  def change
    create_table :localidades do |t|
      t.string :cod_postal
      t.string :localidade
      t.string :cidade
      t.references :pais, index: true

      t.timestamps
    end
  end
end
