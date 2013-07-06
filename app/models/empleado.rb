class Empleado < ActiveRecord::Base
  has_many :evaluacion
  attr_accessible :apellido, :celular, :documento, :nombre, :telefono

    validates :nombre, :presence => true,
    :length => { :maximum => 30 }


      validates :apellido, :presence => true,
    :length => { :maximum => 30 }
     

     validates :documento, :presence => true,
	:length => { :minimum => 6, :maximum => 15 },
	:numericality => true


  def self.search(search)#codigo del buscador y la paginacion
   where('nombre like ?', "%#{search}%")
   end

end
