class ArticlesController < ApplicationController
  before_filter :except => ['create','update','destroy']
  def index
    @articles = Article.order(created_at: :desc).paginate(:page => params[:page], :per_page => 4)

  end
  def show
    @article = Article.find_by(id: params[:id])
  end

end
