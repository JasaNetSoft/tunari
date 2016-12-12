class RecepcionsController < ApplicationController

  load_and_authorize_resource
  before_action :set_recepcion, only: [:show, :edit, :update, :destroy]

  def index
    @recepcions = Recepcion.all
    if params[:search]
      @recepcions = Recepcion.search(params[:search])
    else
      @recepcions = Recepcion.all.order('destinatario ASC')
    end
  end

  def show
    @recepcion = Recepcion.find(params[:id])
  end

  def new
    @recepcion = Recepcion.new
  end

  def edit
    @recepcion = Recepcion.find(params[:id])
  end

  def create
    @recepcion = Recepcion.new(recepcion_params)
    @recepcion.username = current_user.name
    if @recepcion.save
      flash[:success] = "Gracias por registrar la correspondencia"
      redirect_to recepcions_url
    else
      render 'new'
    end
  end

  def update
    @recepcion = Recepcion.find(params[:id])
    if @recepcion.update(recepcion_params)
      flash[:success] = "Actualizo sus datos correctamente"
      redirect_to recepcions_url
    else
      render 'edit'
    end
  end

  def destroy
    Recepcion.find(params[:id]).destroy
    flash[:success] = "Correspondencia eliminado correctamente"
    redirect_to recepcions_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepcion
      @recepcion = Recepcion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recepcion_params
      params.require(:recepcion).permit(:username, :remitente, :destinatario, :referencia, :numero, :estado, :carrera)
    end
end
