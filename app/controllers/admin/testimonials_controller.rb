class Admin::TestimonialsController < AdminController
  def index
    @testimonials = Testimonial.all
  end

  def new
    @testimonial = Testimonial.new
  end

  def edit
    @testimonial = Testimonial.find(params[:id])
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    respond_to do |format|
      if @testimonial.save
        format.html { redirect_to admin_testimonials_path, notice: 'Testimonial was successfully created.' }
        format.json { render :show, status: :ok, location: @testimonial }
      else
        format.html { render :edit }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @testimonial = Testimonial.find(params[:id])
    respond_to do |format|
      if @testimonial.update(testimonial_params)
        format.html { redirect_to admin_testimonials_path, notice: 'Testimonial was successfully updated.' }
        format.json { render :show, status: :ok, location: @testimonial }
      else
        format.html { render :edit }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])
    respond_to do |format|
      if @testimonial.destroy
        format.html { redirect_to admin_testimonials_path, notice: 'Testimonial was successfully deleted.' }
        format.json { render :show, status: :ok, location: @testimonial }
      else
        format.html { render :edit }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_testimonial
    @testimonial = Testimonial.find(params[:id])
  end

  def testimonial_params
    params.require(:testimonial).permit(:name,:photo,:designation,:text)
  end

end