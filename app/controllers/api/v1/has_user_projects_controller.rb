module Api
  module V1    
    class HasUserProjectsController < ApplicationController
      before_action :authenticate_user
      #before_action :is_authorized, only:[:create,:update,:delete]
      before_action :set_has_user_projectc, only: [:show, :update, :destroy]

      # GET /has_user_projects
      # GET /has_user_projects.json
      def index
        @has_user_projects = HasUserProject.all
         render json: @has_user_projects
      end

      # GET /has_user_projects/1
      # GET /has_user_projects/1.json
      def show
        render json: @has_user_project
      end

      # POST /has_user_projects
      # POST /has_user_projects.json
      def create
        @has_user_project = HasUserProject.new(has_user_project_params)

        if @has_user_project.save
          render json: @has_user_project, status: :created#, location: @has_user_project
        else
          render json: @has_user_project.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /has_user_projects/1
      # PATCH/PUT /has_user_projects/1.json
      def update
        if @has_user_project.update(has_user_project_params)
          render json: @has_user_project, status: :ok, location: @has_user_project
        else
          render json: @has_user_project.errors, status: :unprocessable_entity
        end
      end

      # DELETE /has_user_projects/1
      # DELETE /has_user_projects/1.json
      def destroy
        if @has_user_project.destroy
          render json: { has_user_project: "ELIMINADO"} ,status: :ok #, location: @category
        else
          render json: @has_user_project.errors, status: :unprocessable_entity
         end
      end
      

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_has_user_project
          @has_user_project = HasUserProject.find(params[:id])
        end
        def set_has_user_projectc
          @has_user_project = HasUserProject.where(:user_id => params[:id])# ProjectUser.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def has_user_project_params
          params.require(:has_user_project).permit(:user_id, :project_id, :rol)
        end

        def is_authorized
             
          if current_user.user_type_id ==1 || current_user.user_type_id ==38 || current_user.user_type_id ==39
            return true
          else
            render json: @has_user_project, status: :unauthorized
          end  
            
        end 
    end
  end
end    
