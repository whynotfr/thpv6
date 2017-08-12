class MessagesController < ApplicationController

def new
	@message = Message.new
end

def create
    message_params = params.require(:message).permit(:first_name, :last_name, :email, :body)
    @message = Message.new message_params

    if @message.valid?
      redirect_to contact_path, notice: "Message received, thanks!"
    else
      render :new
    end
end

end
