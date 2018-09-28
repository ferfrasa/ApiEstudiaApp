module Api
  module V1
    class TagsController < ApplicationController
      #before_action :authenticate_user
      before_action :set_tag, only: [:show, :update, :destroy]

      # GET /tags
      # GET /tags.json
      def index
        @tags = Tag.all
        render json: @tags
      end

      # GET /tags/1
      # GET /tags/1.json
      def show
        render json: @tag
      end

      # POST /tags
      # POST /tags.json
      def create
        @tag = Tag.new(tag_params)

        if @tag.save
          render json: @tag, status: :created#, location: @tag
        else
          render json: @tag.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /tags/1
      # PATCH/PUT /tags/1.json
      def update
        if @tag.update(tag_params)
          render json: @tag, status: :ok#, location: @tag
        else
          render json: @tag.errors, status: :unprocessable_entity
        end
      end

      # DELETE /tags/1
      # DELETE /tags/1.json
      def destroy
        if @tag.destroy
          render json: {tag: "ELIMINADO"} ,status: :ok #, location: @category
        else
          render json: @tag.errors, status: :unprocessable_entity
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_tag
          @tag = Tag.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def tag_params
          params.require(:tag).permit(:name_tag, :color_tag)
        end
    end
  end
end