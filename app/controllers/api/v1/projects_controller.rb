module Api
  module V1
    class ProjectsController < ApplicationController
      before_action :authenticate_user
      before_action :is_authorized, only:[:create,:update,:delete]
      before_action :set_project, only: [:show, :update, :destroy]

      # GET /projects
      # GET /projects.json
      def index
        @projects = Project.all
        render json: @projects
      end

      # GET /projects/1
      # GET /projects/1.json
      def show
        render json: @project
      end

      # POST /projects
      # POST /projects.json
      def create
        @project = Project.new(project_params_create)

        if @project.save
          render json: @project, status: :created #, location: @project
        else
          render json: @project.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /projects/1
      # PATCH/PUT /projects/1.json
      def update
        if @project.update(project_params_update)
          render json: @project, status: :ok#, location: @project
        else
          render json: @project.errors, status: :unprocessable_entity
        end
      end

      # DELETE /projects/1
      # DELETE /projects/1.json
      def destroy
        if @project.destroy
          render json: {project: "ELIMINADO"} ,status: :ok #, location: @category
        else
          render json: @project.errors, status: :unprocessable_entity
         end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_project
          @project = Project.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def project_params_create
          params.require(:project).permit(:name_project, :description_project, 
             :category_id, :spectator_id, tag_ids:[])
        end

        def project_params_update
          params.require(:project).permit(:name_project, :description_project, 
             :category_id, :spectator_id)
        end

        def project_params_update
          params.require(:project).permit(:name_project, :description_project, 
             :status_project, :category_id, :spectator_id)
        end

        def is_authorized
             
          if current_user.user_type_id ==1 || current_user.user_type_id ==38 || current_user.user_type_id ==39
            return true
          else
            render json:  @project, status: :unauthorized
          end  
            
        end 
    end
  end
end  