module UsersHelper
  def unread_messages
    current_user.messages.last

  end
end
