class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @all_users = User.all.order(name: :asc)
  end
end
