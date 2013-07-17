class Servicio < ActiveRecord::Base
  belongs_to :empleado
  belongs_to :solicitud_servicio
  belongs_to :cliente
  belongs_to :estado
  belongs_to :ofertado
  attr_accessible :fecha, :hora,:solicitud_servicio_id, :empleado_id, :cliente_id, :estado_id, :ofertado_id
end
