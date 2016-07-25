class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index   # this is the mailbox
    @users = User.all
    @conversations = Conversation.involving(current_user)
  end

  def new
    p params
    @conversation = Conversation.create(sender_id: current_user.id, recipient_id: "TESTING", conversation_variety_id: 1)
    p @conversation
    render 'index'
  end

  def create
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create(conversation_params)
    end
    redirect_to conversation_messages_path(@conversation)
   end
     private
    def conversation_params
      params.permit(:sender_id, :recipient_id, :conversation_variety_id)
    end

end
