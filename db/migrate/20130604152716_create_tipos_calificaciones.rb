class CreateTiposCalificaciones < ActiveRecord::Migration
  def change
    create_table :tipos_calificaciones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
