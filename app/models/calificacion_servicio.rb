class CalificacionServicio < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :tipo_calificacion

  attr_accessible :observaciones , :cliente_id, :tipo_calificacion_id

    def self.search(search)#codigo del buscador
      where('observaciones like ?', "%#{search}%")
    end

end
