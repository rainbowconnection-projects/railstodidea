class ProjectsController < ApplicationController
  def index
    @projects = Project.paginate(:page => params[:page], :per_page => 6)
  end

  def show
    @project = Project.where(id: params[:id]).first
    @gallery = @project.try(:project_gallery).try(:project_photos)
  end
end
