class CreateTipoCalificacions < ActiveRecord::Migration
  def change
    create_table :tipo_calificacions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
