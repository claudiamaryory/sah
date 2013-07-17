class TipoCalificacion < ActiveRecord::Base
  has_many :calificaciones_servicios
 
  attr_accessible :nombre

  
 
end
