class Servicio < ActiveRecord::Base
  belongs_to :empleado
 belongs_to :solicitud_servicio
  belongs_to :cliente
  has_many :evaluaciones
  attr_accessible :fecha, :hora,:solicitud_servicio_id, :empleado_id, :cliente_id
end
