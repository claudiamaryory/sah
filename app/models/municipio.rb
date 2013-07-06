class Municipio < ActiveRecord::Base
	has_many :barrios
    attr_accessible :nombre
 
    def self.search(search)#codigo del buscador
      where('nombre like ?', "%#{search}%")
    end
          

      validates :nombre, :presence => true,
    :length => { :maximum => 30 }
end
