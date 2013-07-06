# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130620174457) do

  create_table "barrios", :force => true do |t|
    t.string   "nombre"
    t.integer  "municipio_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "barrios", ["municipio_id"], :name => "index_barrios_on_municipio_id"

  create_table "calificaciones_servicios", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "tipo_calificacion_id"
    t.text     "observaciones"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "calificaciones_servicios", ["cliente_id"], :name => "index_calificaciones_servicios_on_cliente_id"
  add_index "calificaciones_servicios", ["tipo_calificacion_id"], :name => "index_calificaciones_servicios_on_tipo_calificacion_id"

  create_table "clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "documento"
    t.string   "direccion"
    t.integer  "barrio_id"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "clientes", ["barrio_id"], :name => "index_clientes_on_barrio_id"

  create_table "empleados", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "documento"
    t.string   "telefono"
    t.string   "celular"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "evaluaciones", :force => true do |t|
    t.integer  "empleado_id"
    t.integer  "servicio_id"
    t.integer  "tipo_calificacion_id"
    t.text     "observacion"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "evaluaciones", ["empleado_id"], :name => "index_evaluaciones_on_empleado_id"
  add_index "evaluaciones", ["servicio_id"], :name => "index_evaluaciones_on_servicio_id"
  add_index "evaluaciones", ["tipo_calificacion_id"], :name => "index_evaluaciones_on_tipo_calificacion_id"

  create_table "municipios", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ofertados", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reprogramaciones", :force => true do |t|
    t.time     "hora"
    t.date     "fecha"
    t.integer  "solicitud_servicio_id"
    t.text     "observacion"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "reprogramaciones", ["solicitud_servicio_id"], :name => "index_reprogramaciones_on_solicitud_servicio_id"

  create_table "servicios", :force => true do |t|
    t.date     "fecha"
    t.time     "hora"
    t.integer  "empleado_id"
    t.integer  "solicitud_servicio_id"
    t.integer  "cliente_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "servicios", ["cliente_id"], :name => "index_servicios_on_cliente_id"
  add_index "servicios", ["empleado_id"], :name => "index_servicios_on_empleado_id"
  add_index "servicios", ["solicitud_servicio_id"], :name => "index_servicios_on_solicitud_servicio_id"

  create_table "solicitudes_servicios", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "documento"
    t.string   "direccion"
    t.integer  "barrio_id"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.integer  "ofertado_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "solicitudes_servicios", ["barrio_id"], :name => "index_solicitudes_servicios_on_barrio_id"
  add_index "solicitudes_servicios", ["ofertado_id"], :name => "index_solicitudes_servicios_on_ofertado_id"

  create_table "tipo_calificacions", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipos_calificaciones", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
