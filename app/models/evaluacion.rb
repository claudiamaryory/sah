class Evaluacion < ActiveRecord::Base
  belongs_to :empleado
  belongs_to :servicio
  belongs_to :tipo_calificacion
  attr_accessible :observacion, :empleado_id, :servicio_id, :tipo_calificacion_id
end
