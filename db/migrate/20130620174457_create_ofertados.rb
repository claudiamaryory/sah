class CreateOfertados < ActiveRecord::Migration
  def change
    create_table :ofertados do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
