module Api
  module V1
    class SpectatorsController < ApplicationController
      before_action :authenticate_user
      before_action :set_spectator, only: [:show, :update, :destroy]

      # GET /spectators
      # GET /spectators.json
      def index
        @spectators = Spectator.all
        render json: @spectators
      end

      # GET /spectators/1
      # GET /spectators/1.json
      def show
        render json: @spectator
      end

      # POST /spectators
      # POST /spectators.json
      def create
        @spectator = Spectator.new(spectator_params)

        if @spectator.save
          render json: @spectator, status: :created #, location: @spectator
        else
          render json: @spectator.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /spectators/1
      # PATCH/PUT /spectators/1.json
      def update
        if @spectator.update(spectator_params)
          render json: @spectator, status: :ok #, location: @spectator
        else
          render json: @spectator.errors, status: :unprocessable_entity
        end
      end

      # DELETE /spectators/1
      # DELETE /spectators/1.json
      def destroy
        if @spectator.destroy
          render json: {spectator: "ELIMINADO"} ,status: :ok #, location: @category
        else
          render json: @spectator.errors, status: :unprocessable_entity
         end
      
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_spectator
          @spectator = Spectator.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def spectator_params
          params.require(:spectator).permit(:name_spectator)
        end
    end
  end
end