class Reprogramacion < ActiveRecord::Base
  belongs_to :solicitud_servicio
  attr_accessible :fecha, :hora, :observacion, :solicitud_servicio_id
end
