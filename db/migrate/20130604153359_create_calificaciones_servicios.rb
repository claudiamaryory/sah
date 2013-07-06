class CreateCalificacionesServicios < ActiveRecord::Migration
  def change
    create_table :calificaciones_servicios do |t|
      t.references :cliente
      t.references :tipo_calificacion
      t.text :observaciones

      t.timestamps
    end
    add_index :calificaciones_servicios, :cliente_id
    add_index :calificaciones_servicios, :tipo_calificacion_id
  end
end
