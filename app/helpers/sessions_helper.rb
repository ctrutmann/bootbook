module SessionsHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def unread_message
    @conversations = Conversation.involving(current_user)
    @conversations.each do |convo|
      return true if convo.messages.last.read == false && convo.messages.last.user_id != current_user.id
    end
  end
end
