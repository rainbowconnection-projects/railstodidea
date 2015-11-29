class Admin::ProjectsController < AdminController
  def index
    @projects = Project.paginate(page: params[:page],per_page: 5)
  end
end