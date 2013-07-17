class Ofertado < ActiveRecord::Base
  attr_accessible :nombre
  has_many :solicitudes_servicios
  has_many :servicios

    validates :nombre, :presence => true,
    :length => { :maximum => 30 }

  def self.search(search)#codigo del buscador
      where('nombre like ?', "%#{search}%")
    end
end
