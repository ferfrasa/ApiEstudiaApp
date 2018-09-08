module Api
  module V1
    class HasProjectTagsController < ApplicationController
      before_action :set_has_project_tag, only: [:show, :update, :destroy]

      # GET /has_project_tags
      # GET /has_project_tags.json
      def index
        @has_project_tags = HasProjectTag.all
      end

      # GET /has_project_tags/1
      # GET /has_project_tags/1.json
      def show
      end

      # POST /has_project_tags
      # POST /has_project_tags.json
      def create
        @has_project_tag = HasProjectTag.new(has_project_tag_params)

        if @has_project_tag.save
          render :show, status: :created, location: @has_project_tag
        else
          render json: @has_project_tag.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /has_project_tags/1
      # PATCH/PUT /has_project_tags/1.json
      def update
        if @has_project_tag.update(has_project_tag_params)
          render :show, status: :ok, location: @has_project_tag
        else
          render json: @has_project_tag.errors, status: :unprocessable_entity
        end
      end

      # DELETE /has_project_tags/1
      # DELETE /has_project_tags/1.json
      def destroy
        @has_project_tag.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_has_project_tag
          @has_project_tag = HasProjectTag.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def has_project_tag_params
          params.require(:has_project_tag).permit(:project_id, :tag_id)
        end
    end
  end
end    