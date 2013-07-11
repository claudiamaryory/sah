class SolicitudServicio < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :barrio
  belongs_to :ofertado
  
  has_many :servicios
   attr_accessible :direccion, :telefono, :barrio_id, :ofertado_id, :observaciones,:cliente_id

    validates :telefono, :presence => true,
    :length => { :minimum => 6, :maximum => 15 },
    :numericality => true

     
end
