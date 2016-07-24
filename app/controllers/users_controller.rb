class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "Quirk!"
      redirect_to user_path(@user)
    else
      flash[:danger] = @user.errors.full_messages
      render 'new'
    end

  end

  def edit
    @user = current_user
  end

  def update
  end

  def show
    @user = User.find(params[:id])
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
      :city,
      :state,
      :postal_code,
      :country,
      :love,
      :quirk,
      :is_graduate,
      :willing_to_mentor,
      :willing_to_collaborate,
      :employment_status,
      :employer,
      :role,
      :bio,
      :cohort_id,
      :profile_image,
      :female_scholarship,
      :poc_scholarship,
      :lgbtq_scholarship,
      :veteran_scholarship,
      :prior_coding_experience,
      :linkedin,
      :github,
      :facebook,
      :twitter,
      :employ,
      :personal_website,
      :advice_to_students,
      :advice_to_graduates
      )
  end
end
