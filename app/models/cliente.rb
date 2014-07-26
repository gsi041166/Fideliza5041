class Cliente < ActiveRecord::Base
  belongs_to :profissao
  belongs_to :grupocliente
  belongs_to :localidade
  belongs_to :loja
  belongs_to :vendedor
  belongs_to :sexo
end
