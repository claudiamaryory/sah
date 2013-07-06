class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.date :fecha
      t.time :hora
      t.references :empleado
      t.references :solicitud_servicio
      t.references :cliente

      t.timestamps
    end
    add_index :servicios, :empleado_id
    add_index :servicios, :solicitud_servicio_id
    add_index :servicios, :cliente_id
  end
end
