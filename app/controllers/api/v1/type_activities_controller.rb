module Api
  module V1
    class TypeActivitiesController < ApplicationController
      before_action :set_type_activity, only: [:show, :update, :destroy]

      # GET /type_activities
      # GET /type_activities.json
      def index
        @type_activities = TypeActivity.all
      end

      # GET /type_activities/1
      # GET /type_activities/1.json
      def show
      end

      # POST /type_activities
      # POST /type_activities.json
      def create
        @type_activity = TypeActivity.new(type_activity_params)

        if @type_activity.save
          render :show, status: :created, location: @type_activity
        else
          render json: @type_activity.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /type_activities/1
      # PATCH/PUT /type_activities/1.json
      def update
        if @type_activity.update(type_activity_params)
          render :show, status: :ok, location: @type_activity
        else
          render json: @type_activity.errors, status: :unprocessable_entity
        end
      end

      # DELETE /type_activities/1
      # DELETE /type_activities/1.json
      def destroy
        @type_activity.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_type_activity
          @type_activity = TypeActivity.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def type_activity_params
          params.require(:type_activity).permit(:name_type_activity)
        end
    end
  end
end 