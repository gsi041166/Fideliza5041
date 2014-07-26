class CreateLojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
