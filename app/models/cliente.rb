class Cliente < ActiveRecord::Base
  validates :cartao, :nome, :presence => {message: "Deve ser preenchido..."}

  belongs_to :profissao
  belongs_to :grupocliente
  belongs_to :localidade
  belongs_to :loja
  belongs_to :vendedor
  belongs_to :sexo

  #Perfil
  has_many :perfilclientes
  has_many :perfils, through: :perfilclientes
  
  #Contactos
  has_many :contactos
  has_many :tipocontactos, through: :contactos
  
  accepts_nested_attributes_for :contactos

end
