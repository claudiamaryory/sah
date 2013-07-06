class SolicitudesServiciosController < ApplicationController
  
  def index
    @solicitudes_servicios = SolicitudServicio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @solicitudes_servicios }
    end
  end


  def show
    @solicitud_servicio = SolicitudServicio.find(params[:id])

  end


  def new
    @solicitud_servicio = SolicitudServicio.new

  end

  
  def edit
    @solicitud_servicio = SolicitudServicio.find(params[:id])
  end

 
  def create
    @solicitud_servicio = SolicitudServicio.new(params[:solicitud_servicio])
       render :action => :new unless @solicitud_servicio.save
    
  end

   def update
    @solicitud_servicio = SolicitudServicio.find(params[:id])
    render :action => :edit unless @solicitud_servicio.update_attributes(params[:solicitud_servicio])
     
  end


  def destroy
    @solicitud_servicio = SolicitudServicio.find(params[:id])
    @solicitud_servicio.destroy

  end
end
