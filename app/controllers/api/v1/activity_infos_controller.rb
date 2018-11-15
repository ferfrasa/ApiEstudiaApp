module Api
    module V1
        class ActivityInfosController < ApplicationController
          before_action :authenticate_user
            before_action :set_has_activity_info, only: [:show]
            before_action :update_status_activity, only: [:index]

          def index
              @activity_infos = ActivityInfo.all
              render json: @activity_infos
            end 
          

          def show
            render json: @activity_info 
          end

          def set_has_activity_info
            @activity_info  =  ActivityInfo.where(:user_id => params[:id])# ProjectUser.find(params[:id])
          end

            
        end
    end    
end    