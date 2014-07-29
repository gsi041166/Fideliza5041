class Perfil < ActiveRecord::Base
  has_many :perfilclientes 
  has_many :clientes, through: :perfilclientes
end
