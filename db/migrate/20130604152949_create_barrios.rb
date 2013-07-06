class CreateBarrios < ActiveRecord::Migration
  def change
    create_table :barrios do |t|
      t.string :nombre
      t.references :municipio

      t.timestamps
    end
    add_index :barrios, :municipio_id
  end
end
