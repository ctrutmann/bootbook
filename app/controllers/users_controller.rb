class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params)
      flash[:success] = "You're all updated!"
      redirect_to user_path(@user)
    else
      flash[:danger] = @user.errors.full_messages
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
    # @user = User.find(user_params)
  end

  def delete
    # You may never leave BootBook MUHAHAHAHA
  end

  private
  def user_params
    params.require(:user).permit(
      :name,
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

  def cohorts_params
    params.require(:cohorts).permit(
      :name,
      :campus,
      :graduation_date
    )
  end

  def interests_params
    params.require(:interests).permit(
      :name,
      :campus,
      :graduation_date
    )
  end

end
