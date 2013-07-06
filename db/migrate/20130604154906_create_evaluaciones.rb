class CreateEvaluaciones < ActiveRecord::Migration
  def change
    create_table :evaluaciones do |t|
      t.references :empleado
      t.references :servicio
      t.references :tipo_calificacion
      t.text :observacion

      t.timestamps
    end
    add_index :evaluaciones, :empleado_id
    add_index :evaluaciones, :servicio_id
    add_index :evaluaciones, :tipo_calificacion_id
  end
end
