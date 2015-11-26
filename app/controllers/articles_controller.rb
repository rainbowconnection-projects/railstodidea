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
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
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
