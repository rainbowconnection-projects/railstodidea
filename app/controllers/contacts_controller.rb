class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      if ContactMailer.new_message(@contact).deliver_now
        redirect_to contact_path, notice: "Your message has been sent."
      end
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
