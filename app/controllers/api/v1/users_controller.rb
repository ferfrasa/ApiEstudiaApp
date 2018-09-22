module Api
  module V1    
    class UsersController < ApplicationController
      before_action :authenticate_user, except: [:create]
      before_action :set_user, only: [:show, :update, :destroy]

      # GET /users
      # GET /users.json
      def index
        @users = User.all
        render json: @users
      end

      # GET /users/1
      # GET /users/1.json
      def show
        render json: @user
      end

      # POST /users
      # POST /users.json
      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :created#, location: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /users/1
      # PATCH/PUT /users/1.json
      def update
        if @user.update(user_params_update)
          render json: @user, status: :ok#, location: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # DELETE /users/1
      # DELETE /users/1.json
      def destroy
        if @user.destroy
          render json: {user: "ELIMINADO"} ,status: :ok #, location: @category
        else
          render json: @user.errors, status: :unprocessable_entity
        end
        
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
          @user = User.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def user_params
          params.require(:user).permit(:name, :email, :doc, :password, :user_type_id, :university_id)
        end

        def user_params_update
          params.require(:user).permit(:name, :email, :doc, :password, :password, :password_confirmation,  :university_id)
        end
    end
  end
end

