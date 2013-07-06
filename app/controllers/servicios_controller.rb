class ServiciosController < ApplicationController
 
  def index
    @servicios = Servicio.all

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
end
