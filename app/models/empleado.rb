class Empleado < ActiveRecord::Base
  has_many :estado
  attr_accessible :apellido, :celular, :documento, :nombre, :telefono, :imagen

    validates :nombre, :presence => true,
    :length => { :maximum => 30 }


      validates :apellido, :presence => true,
    :length => { :maximum => 30 }
     

     validates :documento, :presence => true,
  	:length => { :minimum => 6, :maximum => 15 },
  	:numericality => true

     validates :telefono, :presence => true,
    :length => { :minimum => 6, :maximum => 15 },
    :numericality => true

     validates :celular, :presence => true,
    :length => { :minimum => 6, :maximum => 15 },
    :numericality => true

#codigo para subir fotos,documentos
has_attached_file :imagen, :styles => { :small => "100x100>" , :lsmall => "30x30>" },
                  :url  => "/assets/personas/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/personas/:id/:style/:basename.:extension"

validates_attachment_presence :imagen
validates_attachment_size :imagen, :less_than => 5.megabytes
validates_attachment_content_type :imagen, :content_type => ['image/jpeg', 'image/png']

  def self.search(search)#codigo del buscador y la paginacion
   where('nombre like ?', "%#{search}%")
   end

end



