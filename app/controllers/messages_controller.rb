class MessagesController < ApplicationController
  def new
  	@message = Message.new
  end


  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.contact_me(@message).deliver_now
      redirect_to contact_path, notice: "Merci pour ton message, on te répondra très vite."
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:first_name, :last_name, :email, :body)
  end
end