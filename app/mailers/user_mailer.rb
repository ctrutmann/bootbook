class UserMailer < ApplicationMailer
  default from: 'bootbook.herokuapp.com'

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to BootBook')
  end

  def new_convo(user)
    @user = user
    @url = 'http://example.com'
    mail(to: @user.email, subject: 'You have a new Conversation!')
  end
end
