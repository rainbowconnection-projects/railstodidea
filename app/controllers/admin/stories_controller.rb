class Admin::StoriesController < AdminController

  def index
    @stories = Story.all
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    respond_to do |format|
      if @story.save
        format.html { redirect_to admin_stories_path, notice : 'Story was successfully updated.' }
        format.json { render :show, status : :ok, location : @story }
      else
        format.html { render :edit }
        format.json { render json : @story.errors, status : :unprocessable_entity }
      end
    end
  end
end