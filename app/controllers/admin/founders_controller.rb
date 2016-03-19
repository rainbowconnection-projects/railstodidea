class Admin::FoundersController < AdminController

  def index
    @founders = Founder.all
  end

  def new
    @founder = Founder.new
  end

  def edit
    @founder = Founder.find(params[:id])
  end

  def create

    #render plain params['founder']
    @founder = Founder.new(founder_params)
    respond_to do |format|
      if @founder.save
        format.html { redirect_to admin_founders_path, notice: 'Founder was successfully created.' }
        format.json { render :show, status: :ok, location: @founder }
      else
        format.html { render :edit }
        format.json { render json: @founder.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @founder = Founder.find(params[:id])
    respond_to do |format|
      if @founder.save
        format.html { redirect_to admin_founders_path, notice: 'Founder was successfully updated.' }
        format.json { render :show, status: :ok, location: @founder }
      else
        format.html { render :edit }
        format.json { render json: @founder.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @founder = Founder.find(params[:id])
    respond_to do |format|
      if @founder.destroy
        format.html { redirect_to admin_founders_path, notice: 'Founder was successfully deleted.' }
        format.json { render :show, status: :ok, location: @founder }
      else
        format.html { render :edit }
        format.json { render json: @founder.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_founder
    @founder = Founder.find(params[:id])
  end

  def set_tags
    @tags = params[:tags]
  end

  def founder_params
    params.require(:founder).permit(:name, :stories, :photo, :title)
  end
end