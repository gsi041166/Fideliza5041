class Tipocontacto < ActiveRecord::Base
  has_many :contactos
  has_many :clientes, through: :contactos
end
