class Perfilcliente < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :perfil
end
