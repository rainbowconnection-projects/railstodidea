class Admin::EventGalleriesController < AdminController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]



  # GET /galleries
  # GET /galleries.json
  def index
    @event_galleries = EventGallery.all
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
  end

  # GET /galleries/new
  def new
    @event_gallery = EventGallery.new
  end

  # GET /galleries/1/edit
  def edit
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @event_gallery = EventGallery.new(gallery_params)

    respond_to do |format|
      if @event_gallery.save
        format.html { redirect_to admin_event_galleries_path, notice: 'Event Gallery was successfully created.' }
        format.json { render :show, status: :created, location: @event_gallery }
      else
        format.html { render :new }
        format.json { render json: @event_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galleries/1
  # PATCH/PUT /galleries/1.json
  def update
    respond_to do |format|
      if @event_gallery.update(gallery_params)
        format.html { redirect_to admin_galleries_path, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_gallery }
      else
        format.html { render :edit }
        format.json { render json: @event_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @event_gallery.destroy
    respond_to do |format|
      format.html { redirect_to admin_galleries_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_gallery
    @event_gallery = EventGallery.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def gallery_params
    params.require(:event_gallery).permit(:name, :event_id)
  end
end