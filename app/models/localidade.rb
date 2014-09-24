class Localidade < ActiveRecord::Base
  belongs_to :pais
  
  def codpostal_localidade
    cod_postal << " - " << localidade << ", " << cidade
  end
end
