class CreateVendedors < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
