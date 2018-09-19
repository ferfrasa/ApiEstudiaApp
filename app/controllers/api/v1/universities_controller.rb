module Api
  module V1
    class UniversitiesController < ApplicationController
      before_action :set_university, only: [:show, :update, :destroy]

      # GET /universities
      # GET /universities.json
      def index
        @universities = University.all
        render json: @universities
      end

      # GET /universities/1
      # GET /universities/1.json
      def show
        render json: @university
      end

      # POST /universities
      # POST /universities.json
      def create
        @university = University.new(university_params)

        if @university.save
          render json: @university, status: :created #, location: @university
        else
          render json: @university.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /universities/1
      # PATCH/PUT /universities/1.json
      def update
        if @university.update(university_params)
          render json: @university, status: :ok #, location: @university
        else
          render json: @university.errors, status: :unprocessable_entity
        end
      end

      # DELETE /universities/1
      # DELETE /universities/1.json
      def destroy
        if @university.destroy
          render json: {university: "ELIMINADO"} ,status: :ok #, location: @category
        else
          render json: @university.errors, status: :unprocessable_entity
         end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_university
          @university = University.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def university_params
          params.require(:university).permit(:name)
        end
    end
  end
end 
