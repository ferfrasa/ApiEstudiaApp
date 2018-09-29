module Api
   module V1
     class ListpsController < ApplicationController
        before_action :set_listp, only: [:show]
        
        def index
          @listps = Listp.all
          render json: @listps
        end
        
        def show
            render json: @listp
        end

        private
        def set_listp
            @listp = Listp.find(params[:id])
        end
        
     end   
   end
end        