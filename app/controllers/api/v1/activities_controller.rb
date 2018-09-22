module Api
  module V1
    class ActivitiesController < ApplicationController
      before_action :authenticate_user
      before_action :set_activity, only: [:show, :update, :destroy]

      # GET /activities
      # GET /activities.json
      def index
        @activities = Activity.all
        render json: @activities
      end

      # GET /activities/1
      # GET /activities/1.json
      def show
        render json: @activity
      end

      # POST /activities
      # POST /activities.json
      def create
        @activity = Activity.new(activity_params)

        if @activity.save
          render json: @activity, status: :created#, location: @activity
        else
          render json: @activity.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /activities/1
      # PATCH/PUT /activities/1.json
      def update
        if @activity.update(activity_params)
          render json: @activity, status: :ok#, location: @activity
        else
          render json: @activity.errors, status: :unprocessable_entity
        end
      end

      # DELETE /activities/1
      # DELETE /activities/1.json
      def destroy
        if @activity.destroy
          render json: {activity: "ELIMINADO"} ,status: :ok #, location: @category
        else
          render json: @activity.errors, status: :unprocessable_entity
         end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_activity
          @activity = Activity.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def activity_params
          params.require(:activity).permit(:name_activity, :description_activity,
             :fecha_activity, :lugar_activity, :status_activity_id, :type_activity_id,:project_id)
        end
    end
  end
end    