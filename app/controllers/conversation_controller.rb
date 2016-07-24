class ConversationController < ApplicationController
  def index
    @conversations = Conversation.where(sender_id: current_user.id)
    @conversations += Conversation.where(recipient_id: current_user.id)
  end



  def show
    @conversation = Conversation.find(params[:id])
  end

  def edit
      @conversation = Conversation.find(params[:id])
  end

  def delete
    @conversation = Conversation.find(params[:id])
    @conversation.destroy
  end
end
