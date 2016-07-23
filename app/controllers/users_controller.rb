class UsersController < ApplicationController
 def index
    @users = User.all
  end

  def new
    # Devise Incorporates User Gen
  end

  def create
    # Devise Incorporates User Gen
  end

  def show
   # @user = User.find(params[:id])
    # Add the current user's owned post
  end

  def edit
    @user = current_user
  end

  def delete
    # You may never leave BootBook MUHAHAHAHA
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :city,
      :state,
      :zipcode,
      :country,
      :love,
      :quirk,
      :is_admin,
      :is_graduate,
      :employment_status,
      :role,
      :bio,
      :cohort_id,
      :profile_image,
      :female_scholarship,
      :poc_scholarship,
      :lgbtq_scholarship,
      :veteran_scholarship,
      :linkedin,
      :github,
      :facebook,
      :twitter,
      :employ,
      :prior_coding_experience,
      :personal_website,
      :employer,
      :advice_to_students,
      :advice_to_graduates
      )
  end
end
