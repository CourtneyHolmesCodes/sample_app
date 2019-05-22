class UserMailer < ApplicationMailer
  default from: "courtneylpayne@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'courtneylpayne@gmail.com',
         subject: "21 Buffalo message from #{name}")
  end
end
