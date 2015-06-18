class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.email_contact.subject
  #
  def email_contact(params)
    @first_name = params['firstname']
    @last_name = params['lastname']
    @email = params['email']
    @drop_down = params['selection']
    @message = params['message']
    mail to: "deborahaanderson@gmail.com", subject: "You've been sent a new message!"
  end
end
