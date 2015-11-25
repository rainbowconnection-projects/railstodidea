class BlogController < ApplicationController
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 3)
  end
  def show
    @article = Article.find_by(params[:id])
  end

  def create

  end
end
