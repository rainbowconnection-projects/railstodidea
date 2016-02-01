class Admin::EventPhotosController < AdminController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  def index
    @event_photos = EventPhoto.all
  end

  def new
    @photo = EventPhoto.new
  end

  def edit
    @photo = EventPhoto.find(params[:id])
  end

  def create
    @photo = EventPhoto.new(photo_params)
    respond_to do |format|
      if @photo.save
        format.html { redirect_to admin_event_photos_path, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @photo = EventPhoto.find(params[:id])
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to admin_event_photos_path, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @photo = EventPhoto.find(params[:id])
    respond_to do |format|
      if @photo.destroy
        format.html { redirect_to admin_event_photos_path, notice: 'Photo was successfully deleted.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_photo
    @photo = EventPhoto.find(params[:id])
  end

  def photo_params
    params.require(:event_photo).permit(:photo, :event_gallery_id, :caption)
  end
end