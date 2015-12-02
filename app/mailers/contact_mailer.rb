class ContactMailer < ApplicationMailer
  default to: "christo-andrew@hotmail.com"

  def new_message(message)
    @message = message

    mail subject: "Message from #{message.name}"
  end

end
