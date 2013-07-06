class EvaluacionesController < ApplicationController
 
  def index
    @evaluaciones = Evaluacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluaciones }
    end
  end

 
  def show
    @evaluacion = Evaluacion.find(params[:id])
  
  end

 
  def new
    @evaluacion = Evaluacion.new
    
  end

  def edit
    @evaluacion = Evaluacion.find(params[:id])
  end


  def create
    @evaluacion = Evaluacion.new(params[:evaluacion])
    render :action => :new unless @evaluacion.save
        
  end

  
  def update
    @evaluacion = Evaluacion.find(params[:id])
    render :action => :edit unless @evaluacion.update_attributes(params[:evaluacion])
      
  end

  def destroy
    @evaluacion = Evaluacion.find(params[:id])
    @evaluacion.destroy

  end
end
