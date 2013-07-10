class AddAimagenToEmpleados < ActiveRecord::Migration

  def self.up
    add_attachment :empleados, :imagen
  end

  def self.down
    remove_attachment :empleados, :imagen
  end
end

