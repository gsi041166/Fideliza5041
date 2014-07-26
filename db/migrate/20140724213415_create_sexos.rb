class CreateSexos < ActiveRecord::Migration
  def change
    create_table :sexos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
