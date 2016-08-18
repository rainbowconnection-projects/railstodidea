class Admin::ProjectGalleriesController < AdminController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]



  # GET /galleries
  # GET /galleries.json
  def index
    @project_galleries = ProjectGallery.all
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
  end

  # GET /galleries/new
  def new
    @project_gallery = ProjectGallery.new
  end

  # GET /galleries/1/edit
  def edit
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @project_gallery = ProjectGallery.new(gallery_params)

    respond_to do |format|
      if @project_gallery.save
        format.html { redirect_to admin_project_galleries_path, notice: 'Project Gallery was successfully created.' }
        format.json { render :show, status: :created, location: @project_gallery }
      else
        format.html { render :new }
        format.json { render json: @project_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galleries/1
  # PATCH/PUT /galleries/1.json
  def update
    respond_to do |format|
      if @project_gallery.update(gallery_params)
        format.html { redirect_to admin_galleries_path, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_gallery }
      else
        format.html { render :edit }
        format.json { render json: @project_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @project_gallery.destroy
    respond_to do |format|
      format.html { redirect_to admin_galleries_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_gallery
    @project_gallery = ProjectGallery.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def gallery_params
    params.require(:project_gallery).permit(:name, :project_id)
  end
end