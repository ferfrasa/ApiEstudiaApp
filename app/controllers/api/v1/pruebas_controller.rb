class PruebasController < ApplicationController
  before_action :set_prueba, only: [:show, :update, :destroy]

  # GET /pruebas
  # GET /pruebas.json
  def index
    @pruebas = Prueba.all
  end

  # GET /pruebas/1
  # GET /pruebas/1.json
  def show
  end

  # POST /pruebas
  # POST /pruebas.json
  def create
    @prueba = Prueba.new(prueba_params)

    if @prueba.save
      render :show, status: :created, location: @prueba
    else
      render json: @prueba.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pruebas/1
  # PATCH/PUT /pruebas/1.json
  def update
    if @prueba.update(prueba_params)
      render :show, status: :ok, location: @prueba
    else
      render json: @prueba.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pruebas/1
  # DELETE /pruebas/1.json
  def destroy
    @prueba.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prueba
      @prueba = Prueba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prueba_params
      params.require(:prueba).permit(:nombre)
    end
end
