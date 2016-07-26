class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :init_conversation

  def index
    @all_users = User.all.order(name: :asc)
    @conversation = Conversation.find(params[:conversation_id])
    # @conversation = Conversation.where(sender_id: current_user.id)
    # @conversation += Conversation.where(recipient_id: current_user.id)
    if current_user == @conversation.sender || current_user == @conversation.recipient
      @other = current_user == @conversation.sender ? @conversation.recipient : @conversation.sender
      @messages = @conversation.messages
    else
      # flash[:danger] = "Private Message"
      redirect_to conversations_path
    end
  end

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.new(message_params)
    @messages = @conversation.messages

    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
  end

  def new
    p params
  end

  private

  def init_conversation
    @conversation = Conversation.find(params[:conversation_id])
  end

  def message_params
    params.require(:message).permit(:content, :user_id)
  end
end
