module MessagesHelper
  def unread_message
    @conversations = Conversation.involving(current_user)
    @conversations.each do |convo|
      if convo.messages.present?
        return true if convo.messages.last.read == false && convo.messages.last.user_id != current_user.id
      end
    end
  end
end
