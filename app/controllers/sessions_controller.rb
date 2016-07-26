class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    redirect_to '/auth/github'
  end

  def create
    auth = request.env["omniauth.auth"]

    # EFFORTS TO LIMIT USERS TO DEVBOOTCAMP MEMBERS
    # p '*************************************************'
    # p auth
    # p '*************************************************'

    # client = Octokit::Client.new access_token: auth_hash['credentials']['token']

    # if client.org_member?(ENV['ORG_NAME'], client.user.login)
    #   p "YAAAAAAYYYYYYYYYYYYYY!!!!!!!!!!"
    # end

    @user = User.where(:provider => auth['provider'], :uid => auth['uid'].to_s).first
    if @user
      reset_session
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @user = User.create_with_omniauth(auth)
      reset_session
      session[:user_id] = @user.id
      flash[:success] = "Quirk!" if !current_user.quirk
      redirect_to edit_user_path(@user) #do something differently here
    end
  end

  def destroy
    reset_session
    redirect_to root_url
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

  # EFFORTS TO LIMIT USERS TO DEVBOOTCAMP MEMBERS
  # protected
  # def auth_hash
  #   request.env['omniauth.auth']
  # end

end
