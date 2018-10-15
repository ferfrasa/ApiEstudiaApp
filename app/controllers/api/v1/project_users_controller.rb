module Api
    module V1
        class ProjectUsersController < ApplicationController
            before_action :authenticate_user
            before_action :set_project_user, only: [:show]

           def index
            @project_users = ProjectUser.all
            render json: @project_users
           end

           def show
            render json:  @project_user# = ProjectUser.where(:usuario => :id)
           
           end
           private
            # Use callbacks to share common setup or constraints between actions.
            def set_project_user
                @project_user = ProjectUser.where(:usuario => params[:id])# ProjectUser.find(params[:id])
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