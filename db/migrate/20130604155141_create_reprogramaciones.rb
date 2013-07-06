class CreateReprogramaciones < ActiveRecord::Migration
  def change
    create_table :reprogramaciones do |t|
      t.time :hora
      t.date :fecha
      t.references :solicitud_servicio
      t.text :observacion

      t.timestamps
    end
    add_index :reprogramaciones, :solicitud_servicio_id
  end
end
