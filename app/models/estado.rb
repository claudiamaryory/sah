class Estado< ActiveRecord::Base
 
  has_many :servicios
 
  attr_accessible   :servicio_id, :nombre
end
