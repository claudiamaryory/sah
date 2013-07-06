class Barrio < ActiveRecord::Base
  belongs_to :municipio
  has_many :clientes
  attr_accessible :nombre, :municipio_id

   validates :nombre, :presence => true,
    :length => { :maximum => 30 }

    def self.search(search)#codigo del buscador
      where('nombre like ?', "%#{search}%")
    end

end



