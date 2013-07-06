class CreateSolicitudesServicios < ActiveRecord::Migration
  def change
    create_table :solicitudes_servicios do |t|
      t.string :nombre
      t.string :apellido
      t.string :documento
      t.string :direccion
      t.references :barrio
      t.string :telefono
      t.string :celular
      t.string :email
      t.references :ofertado


      t.timestamps
    end
    add_index :solicitudes_servicios, :barrio_id
    add_index :solicitudes_servicios, :ofertado_id
  end
end
