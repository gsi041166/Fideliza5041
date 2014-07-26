class CreateProfissaos < ActiveRecord::Migration
  def change
    create_table :profissaos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
