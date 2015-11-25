class ArticlesController < ApplicationController
  before_action :set_article

  def create
    @article = Article.create(article_params)
    if @article.save
      flash[:notice]="Article Successfully Created"
      redirect_to controller: 'admin', action: 'articles'
    end

  end
  def update
    if @article.update(article_params)
      redirect_to controller: 'admin', action: 'articles'
    end
  end

  private
  def set_article
    @article = Article.find_by(:id => params[:id]);
  end
  def article_params
    params.require(:article).permit(:title,:text,:photo,:category)
  end
end
