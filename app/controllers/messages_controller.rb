class MessagesController < ApplicationController
  def index
    redirect_to 'create'
  end

  def new
    @message = Message.New()
  end

  def create
    @message = Message.create(content: "", user_id: current_user.id, conversation_id: params[:conversation_id])
  end


end
