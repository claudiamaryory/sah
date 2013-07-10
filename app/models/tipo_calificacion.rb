class TipoCalificacion < ActiveRecord::Base
  has_many :calificaciones_servicios
  has_many :evaluaciones
  attr_accessible :nombre

  
 
end
