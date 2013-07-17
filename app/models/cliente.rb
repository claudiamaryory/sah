class Cliente < ActiveRecord::Base
  belongs_to :barrio
  has_many :calificaciones_servicios
  has_many :servicios
  has_many :solicitudes_servicios
  attr_accessible :apellido, :celular, :direccion, :documento, :email, :nombre, :telefono, :barrio_id
  
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
   
   def self.search(search)
    where('nombre like ?', "%#{search}%")
   end

end
