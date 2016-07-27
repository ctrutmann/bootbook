class UserMailer < ApplicationMailer
  default from: 'boots@bootbook.com'

  def welcome_email(user)
    @user = user 
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to BootBook')
  end
end
