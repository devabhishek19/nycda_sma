class ProjectsController < ApplicationController

  before_action :authenticate
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to students_path
  end

  def project_params
    params.require(:project).permit(:name, :student)
  end
end