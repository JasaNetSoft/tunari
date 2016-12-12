class ProveidosController < ApplicationController
  before_action :set_proveido, only: [:show, :edit, :update, :destroy]

  # GET /proveidos
  # GET /proveidos.json
  def index
    @proveidos = Proveido.all
  end

  # GET /proveidos/1
  # GET /proveidos/1.json
  def show
  end

  # GET /proveidos/new
  def new
    @proveido = Proveido.new
  end

  # GET /proveidos/1/edit
  def edit
  end

  # POST /proveidos
  # POST /proveidos.json
  def create
    @proveido = Proveido.new(proveido_params)

    respond_to do |format|
      if @proveido.save
        format.html { redirect_to @proveido, notice: 'Proveido was successfully created.' }
        format.json { render :show, status: :created, location: @proveido }
      else
        format.html { render :new }
        format.json { render json: @proveido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveidos/1
  # PATCH/PUT /proveidos/1.json
  def update
    respond_to do |format|
      if @proveido.update(proveido_params)
        format.html { redirect_to @proveido, notice: 'Proveido was successfully updated.' }
        format.json { render :show, status: :ok, location: @proveido }
      else
        format.html { render :edit }
        format.json { render json: @proveido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveidos/1
  # DELETE /proveidos/1.json
  def destroy
    @proveido.destroy
    respond_to do |format|
      format.html { redirect_to proveidos_url, notice: 'Proveido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveido
      @proveido = Proveido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proveido_params
      params.require(:proveido).permit(:nombre)
    end
end
