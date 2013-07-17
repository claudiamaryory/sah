class ServiciosController < ApplicationController
 
before_filter :find_solicitudservicio_and_servicio # filtro para detalle amestro

  def index
    @servicios = @solicitud_servicio.servicios.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @servicios }
    end
  end


  def show
    @servicio = Servicio.find(params[:id])

  end

 
  def new
    @servicio = Servicio.new

  end

 
  def edit
    @servicio = Servicio.find(params[:id])
  end

  
  def create
    @servicio = Servicio.new(params[:servicio])
    @servicio.solicitud_servicio_id = @solicitud_servicio.id
    render :action => :new unless @servicio.save
    
  
  end

 
  def update
    @servicio = Servicio.find(params[:id])
    render :action => :edit unless @servicio.update_attributes(params[:servicio])
    
  end

 
  def destroy
    @servicio = Servicio.find(params[:id])
    @servicio.destroy
  end

  def find_solicitudservicio_and_servicio  # filtro de detalle maestro
      @solicitud_servicio = SolicitudServicio.find(params[:solicitud_servicio_id])
      @servicio = Servicio.find(params[:id]) if params[:id]
  end

end
