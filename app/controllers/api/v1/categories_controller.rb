module Api
  module V1
    class CategoriesController < ApplicationController
      #before_action :authenticate_user
      before_action :set_category, only: [:show, :update, :destroy]

      # GET /categories
      # GET /categories.json
      def index
        @categories = Category.all
        render json: @categories
      end

      # GET /categories/1
      # GET /categories/1.json
      def show
        render json: @category
      end

      # POST /categories
      # POST /categories.json
      def create
        @category = Category.new(category_params)

        if @category.save
          render json: @category, status: :created #, location: @ 
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /categories/1
      # PATCH/PUT /categories/1.json
      def update
        if @category.update(category_params)
          render json: @category, status: :ok #, location: @category
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # DELETE /categories/1
      # DELETE /categories/1.json



      
      def destroy
      if @category.destroy
          render json: {category: "ELIMINADO"} ,status: :ok #, location: @category
        else
          render json: @category.errors, status: :unprocessable_entity
         end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_category
          @category = Category.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def category_params
          params.require(:category).permit(:name_category)
        end
    end
  end
end    
