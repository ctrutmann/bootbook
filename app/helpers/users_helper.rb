module UsersHelper
  def unread_messages
    current_user.messages.last
  end

  def dropdown_users
    User.all.order(name: :asc)
  end
end
