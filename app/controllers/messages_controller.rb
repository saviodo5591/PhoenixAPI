class MessagesController < ApiController
  before_filter :authenticate_gamer!

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.build(message_params)
    @message.gamer_id = current_gamer.id
    @message.save!

    @path = conversation_path(@conversation)
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
