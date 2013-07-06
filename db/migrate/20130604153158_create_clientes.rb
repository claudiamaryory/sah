class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :documento
      t.string :direccion
      t.references :barrio
      t.string :telefono
      t.string :celular
      t.string :email

      t.timestamps
    end
    add_index :clientes, :barrio_id
  end
end