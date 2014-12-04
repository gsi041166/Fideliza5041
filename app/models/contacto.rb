class Contacto < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :tipocontacto
end
