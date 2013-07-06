class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellido
      t.string :documento
      t.string :telefono
      t.string :celular

      t.timestamps
    end
  end
end
