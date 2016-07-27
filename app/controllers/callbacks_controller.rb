class CallbacksController < ApplicationController
  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user 
    p '*' * 30
    # UserMailer.welcome_email(@user).deliver_later
    p '*' * 30
  end
end
