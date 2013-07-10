class SolicitudServicio < ActiveRecord::Base
  belongs_to :barrio
  belongs_to :ofertado
  has_many :servicios
  attr_accessible :apellido, :celular, :direccion, :documento, :email, :interesado, :nombre, :telefono, :barrio_id, :ofertado_id

   validates :nombre, :presence => true,
    :length => { :maximum => 30 }


      validates :apellido, :presence => true,
    :length => { :maximum => 30 }
     
     validates :email, :presence => true,
     :uniqueness => true,
     :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

     validates :documento, :presence => true,
  	:length => { :minimum => 6, :maximum => 15 },
  	:numericality => true
    
    validates :telefono, :presence => true,
    :length => { :minimum => 6, :maximum => 15 },
    :numericality => true

     validates :celular, :presence => true,
    :length => { :minimum => 6, :maximum => 15 },
    :numericality => true
end
