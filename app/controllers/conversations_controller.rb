class ConversationsController < ApplicationController
  def index
      @conversations = Conversation.where(sender_id: current_user.id)
      @conversations += Conversation.where(recipient_id: current_user.id)
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new(content: "", user_id: current_user.id, conversation_id: @conversation.id)
    # if current_user.id == @conversation.sender_id || current_user.id ==  @conversation.recipient_id
    #   redirect_to 'messages/new'
    # else
    #   redirect_to '/'
    # end
  end

  def create
    @message.save
      redirect_to '/'
  end

  def edit
    @conversation = Conversation.find(params[:id])
  end

  def update
     @message.save
      redirect_to '/'
  end

  def delete
    @conversation = Conversation.find(params[:id])
    @conversation.destroy
  end
end

