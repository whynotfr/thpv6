class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @greeting = "Hi"
    @body = message.body
    mail(
    	to: "bonjour@thehackingproject.org", from: 'charles@thehackingproject.org'
    	delivery_method_options: {api_key: 'ed9f24040f5022c12d434dd1413432fc', secret_key: 'abc390060a9cded9516ced2a67c81ba3'}
    	)
  end
end
