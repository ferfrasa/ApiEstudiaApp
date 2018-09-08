module Api
  module V1
    class StatusActivitiesController < ApplicationController
      before_action :set_status_activity, only: [:show, :update, :destroy]

      # GET /status_activities
      # GET /status_activities.json
      def index
        @status_activities = StatusActivity.all
      end

      # GET /status_activities/1
      # GET /status_activities/1.json
      def show
      end

      # POST /status_activities
      # POST /status_activities.json
      def create
        @status_activity = StatusActivity.new(status_activity_params)

        if @status_activity.save
          render :show, status: :created, location: @status_activity
        else
          render json: @status_activity.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /status_activities/1
      # PATCH/PUT /status_activities/1.json
      def update
        if @status_activity.update(status_activity_params)
          render :show, status: :ok, location: @status_activity
        else
          render json: @status_activity.errors, status: :unprocessable_entity
        end
      end

      # DELETE /status_activities/1
      # DELETE /status_activities/1.json
      def destroy
        @status_activity.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_status_activity
          @status_activity = StatusActivity.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def status_activity_params
          params.require(:status_activity).permit(:name_status_activity)
        end
    end
  end
end
