class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index   # this is the mailbox
    @users = User.all
    @conversations = Conversation.involving(current_user)
    @conversations.each do |convo|
      if convo.messages.empty?
        convo.destroy
        redirect_to 'index'
      end
    end
  end

  def new
  end

  def create
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
      Conversation.between(params[:sender_id], params[:recipient_id]).each do |conversation|
        if conversation.conversation_variety_id == params[:conversation_variety_id].to_i
          @conversation = conversation
        end
      end
    end
    if !@conversation
      @conversation = Conversation.create(sender_id: params[:sender_id], recipient_id: params[:recipient_id], conversation_variety_id: params[:conversation_variety_id].to_i)
    end
    redirect_to conversation_messages_path(@conversation)
  end

    private
    def conversation_params
      params.permit(:sender_id, :recipient_id, :conversation_variety_id)
    end

end
