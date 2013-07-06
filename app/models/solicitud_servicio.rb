class SolicitudServicio < ActiveRecord::Base
  belongs_to :barrio
  belongs_to :ofertado
  has_many :servicios
  attr_accessible :apellido, :celular, :direccion, :documento, :email, :interesado, :nombre, :telefono, :barrio_id, :ofertado_id
end
