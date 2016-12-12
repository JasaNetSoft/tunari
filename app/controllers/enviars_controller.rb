class EnviarsController < ApplicationController

  load_and_authorize_resource
  before_action :set_enviar, only: [:show, :edit, :update, :destroy]

  def index
    @enviars = Enviar.all.order ('id ASC')
    if params[:search]
      @enviars = Enviar.search(params[:search])
    else
      @enviars = Enviar.all.order('destinatario ASC')
    end
  end

  def show
    @enviar = Enviar.find(params[:id])
  end

  def new
    @enviar = Enviar.new
  end

  def edit
    @enviar = Enviar.find(params[:id])
  end

  def create
    @enviar = Enviar.new(enviar_params)
    @enviar.username = current_user.name
    if @enviar.save
      flash[:success] = "Gracias por registrar la correspondencia"
      redirect_to enviars_url
    else
      render 'new'
    end
  end

  def update
    @enviar = Enviar.find(params[:id])
    if @enviar.update(enviar_params)
      flash[:success] = "Actualizo sus datos correctamente"
      redirect_to enviars_url
    else
      render 'edit'
    end
  end

  def destroy
    Enviar.find(params[:id]).destroy
    flash[:success] = "Correspondencia eliminado correctamente"
    redirect_to enviars_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enviar
      @enviar = Enviar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enviar_params
      params.require(:enviar).permit(:username, :remitente, :destinatario, :referencia, :numero, :estado, :carrera)
    end
end
