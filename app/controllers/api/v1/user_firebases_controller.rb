module Api
    module V1
        class UserFirebasesController < ApplicationController
         before_action :set_user_firebase, only: [:show]
            
          def index
            @user_firebases = UserFirebase.all
            render json:  @user_firebases
          end
            
          def show
            render json:  @user_firebase 
          end
  
          private
            # Use callbacks to share common setup or constraints between actions.
            def set_user_firebase
              @user_firebase = UserFirebase.find(params[:id])
            end
  
        end
    end
end        