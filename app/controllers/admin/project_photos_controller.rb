class Admin::ProjectPhotosController < AdminController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  def index
    @project_photos = ProjectPhoto.all
  end

  def new
    @photo = ProjectPhoto.new
  end

  def edit
    @photo = ProjectPhoto.find(params[:id])
  end

  def create
    @photo = ProjectPhoto.new(photo_params)
    respond_to do |format|
      if @photo.save
        format.html { redirect_to admin_project_photos_path, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @photo = ProjectPhoto.find(params[:id])
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to admin_project_photos_path, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @photo = ProjectPhoto.find(params[:id])
    respond_to do |format|
      if @photo.destroy
        format.html { redirect_to admin_project_photos_path, notice: 'Photo was successfully deleted.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_photo
    @photo = ProjectPhoto.find(params[:id])
  end

  def photo_params
    params.require(:project_photo).permit(:photo, :project_gallery_id, :caption)
  end
end