class ArticlesController < ApplicationController
  def create
    @article = Article.create(article_params)
    if @article.save
      flash[:notice]="Article Successfully Created"
      redirect_to controller: 'admin', action: 'articles'
    end

  end
  def update
    if Article.update(article_params)
      redirect_to controller: 'admin', action: 'articles'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title,:text,:photo,:category)
  end
end
