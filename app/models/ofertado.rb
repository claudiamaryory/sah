class Ofertado < ActiveRecord::Base
  attr_accessible :nombre
  has_many :solicitudes_servicios
  def self.search(search)#codigo del buscador
      where('nombre like ?', "%#{search}%")
    end
end
