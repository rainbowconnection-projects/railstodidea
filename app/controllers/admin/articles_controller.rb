class Admin::ArticlesController < AdminController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create

    #render plain params['article']
    @article = Article.new(article_params)
      respond_to do |format|
      if @article.save
        format.html { redirect_to admin_articles_path, notice: 'Article was successfully created.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @article = Article.find(params[:id])
    respond_to do |format|
      if @article.update(article_params)
        @article_params = params[:article]
        article_params[:tag_ids].each do |tag|
          @article_tag = @article.article_tags.build('article_id'=>@article.id,'tag_id'=>tag)
          @article_tag.save
        end
        format.html { redirect_to admin_articles_path, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @article = Article.find(params[:id])
    respond_to do |format|
      if @article.destroy
        format.html { redirect_to admin_articles_path, notice: 'Article was successfully deleted.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end
  def set_tags
    @tags = params[:tags]
  end

  def article_params
    params.require(:article).permit(:title,:category_id,:text, :photo,:author,:tag_ids => [])
  end

end