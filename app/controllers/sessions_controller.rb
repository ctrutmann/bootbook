class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    redirect_to '/auth/github'
  end


  def create
    client = Octokit::Client.new access_token: auth_hash['credentials']['token']

    # COMMENTED OUT: Logic checking if user is part of Devbootcamp org on Github.
    # Abbreviations for greping user/orgs: chi, sf, sea, nyc, aus, sd, dc

    # if client.org_member?(ENV['ORG_NAME'], client.user.login)
    @user = User.where(:provider => auth_hash['provider'], :uid => auth_hash['uid'].to_s).first
      if @user
        reset_session
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        @user = User.create_with_omniauth(auth_hash)
        reset_session
        session[:user_id] = @user.id
        flash[:success] = "Quirk!" if !current_user.quirk
        redirect_to edit_user_path(@user) #do something differently here
      end
    # else
    #   flash[:danger] = ["Must be a member of the Dev Bootcamp Github organization to join BootBook."]
    #   redirect_to root_url
    # end
  end

  def destroy
    reset_session
    redirect_to root_url
  end

  def failure
    redirect_to root_url, :alert => ["Authentication error: #{params[:message].humanize}"]
  end

  protected
  def auth_hash
    request.env['omniauth.auth']
  end

end
