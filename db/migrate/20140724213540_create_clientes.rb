class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :cartao
      t.string :nome
      t.date :data_nasc
      t.text :obs
      t.string :rua
      t.decimal :acumulado
      t.boolean :activo
      t.references :profissao, index: true
      t.references :grupocliente, index: true
      t.references :localidade, index: true
      t.references :loja, index: true
      t.references :vendedor, index: true
      t.references :sexo, index: true

      t.timestamps
    end
  end
end
