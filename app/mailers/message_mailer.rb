class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    
    @prenom = message.first_name
    @nom = message.last_name
    @mail = message.email 
    @body = message.body 
    mail to: "bonjour@thehackingproject.org", from: 'charles@thehackingproject.org'
  end
end
