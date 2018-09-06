class HasUserProjectsController < ApplicationController
  before_action :set_has_user_project, only: [:show, :update, :destroy]

  # GET /has_user_projects
  # GET /has_user_projects.json
  def index
    @has_user_projects = HasUserProject.all
  end

  # GET /has_user_projects/1
  # GET /has_user_projects/1.json
  def show
  end

  # POST /has_user_projects
  # POST /has_user_projects.json
  def create
    @has_user_project = HasUserProject.new(has_user_project_params)

    if @has_user_project.save
      render :show, status: :created, location: @has_user_project
    else
      render json: @has_user_project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /has_user_projects/1
  # PATCH/PUT /has_user_projects/1.json
  def update
    if @has_user_project.update(has_user_project_params)
      render :show, status: :ok, location: @has_user_project
    else
      render json: @has_user_project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /has_user_projects/1
  # DELETE /has_user_projects/1.json
  def destroy
    @has_user_project.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_has_user_project
      @has_user_project = HasUserProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def has_user_project_params
      params.require(:has_user_project).permit(:project_id, :user_id, :rol)
    end
end
