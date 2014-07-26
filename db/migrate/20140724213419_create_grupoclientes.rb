class CreateGrupoclientes < ActiveRecord::Migration
  def change
    create_table :grupoclientes do |t|
      t.string :descricao
      t.decimal :racio

      t.timestamps
    end
  end
end
