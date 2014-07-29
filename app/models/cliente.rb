class Cliente < ActiveRecord::Base
  validates_presence_of :cartao, message: "deve ser preenchido"
  validates_presence_of :nome, message: "deve ser preenchido"

  belongs_to :profissao
  belongs_to :grupocliente
  belongs_to :localidade
  belongs_to :loja
  belongs_to :vendedor
  belongs_to :sexo

  has_many :perfilclientes
  has_many :perfils, through: :perfilclientes
end
