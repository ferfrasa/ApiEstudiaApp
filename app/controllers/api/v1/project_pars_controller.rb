module Api
    module V1
        class ProjectParsController < ApplicationController
        before_action :authenticate_user
         before_action :set_pro_par, only: [:show]
            
          def index
            @project_pars = ProjectPar.all
            render json: @project_pars
          end
            
          def show
            render json: @project_par
          end
  
          private
            # Use callbacks to share common setup or constraints between actions.
            def set_pro_par
                @project_par =  ProjectPar.find(params[:id])
            end
        end
    end
end