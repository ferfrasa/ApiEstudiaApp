module Api
  module V1       
    class AppreciationsController < ApplicationController
     # before_action :authenticate_user
      before_action :set_appreciation, only: [:show, :update, :destroy]

      # GET /appreciations
      # GET /appreciations.json
      def index
        @appreciations = Appreciation.all
        render json: @appreciations
      end

      # GET /appreciations/1
      # GET /appreciations/1.json
      def show
        render json: @appreciation
      end

      # POST /appreciations
      # POST /appreciations.json
      def create
        @appreciation = Appreciation.new(appreciation_params)

        if @appreciation.save
          render json: @appreciation, status: :created#, location: @appreciation
        else
          render json: @appreciation.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /appreciations/1
      # PATCH/PUT /appreciations/1.json
      def update
        if @appreciation.update(appreciation_params)
          render json: @appreciation, status: :ok#, location: @appreciation
        else
          render json: @appreciation.errors, status: :unprocessable_entity
        end
      end

      # DELETE /appreciations/1
      # DELETE /appreciations/1.json
      def destroy
        if @appreciation.destroy
          render json: {appreciation: "ELIMINADO"} ,status: :ok #, location: @category
        else
          render json: @appreciation, status: :unprocessable_entity
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_appreciation
          @appreciation = Appreciation.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def appreciation_params
          params.require(:appreciation).permit(:calificacion, :comentario, :activity_id, :user_id)
        end
    end
  end
end    
