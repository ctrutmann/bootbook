class UsersController < ApplicationController

  def index
    @users = User.all

    # FUNKY: These all belongs in users_helper.rb. FROM HERE...
    @cities = []
    User.all.each {|user| @cities << user.city if user.city != nil}
    @cities.sort!.uniq!

    @states = []
    User.all.each {|user| @states << user.state if user.state != nil}
    @states.sort!.uniq!

    @countries = []
    User.all.each {|user| @countries << user.country if user.country != nil}
    @countries.sort!.uniq!

    @cohorts = []
    Cohort.all.order(id: :desc).each {|cohort| @cohorts << cohort.name if cohort.name != nil}
    @cohorts.uniq!

    @campuses = []
    Cohort.all.each {|cohort| @campuses << cohort.campus if cohort.campus != nil}
    @campuses.sort!.uniq!

    @graduation_dates = []
    User.all.each {|user| @graduation_dates << user.graduation_date if user.graduation_date != nil}
    @graduation_dates.sort!.uniq!

    @interests = []
    Interest.all.each {|interest| @interests << interest.interest if interest.interest != nil}
    @interests.sort!.uniq!
    #... TO HERE.

    filtering_params(params).each do |key, value|
      @users = @users.city(params[:city]) if params[:city].present?
      @users = @users.state(params[:state]) if params[:state].present?
      @users = @users.country(params[:country]) if params[:country].present?
      @users = @users.cohort(params[:cohort]) if params[:cohort].present?
      @users = @users.campus(params[:campus]).distinct if params[:campus].present?
      @users = @users.graduation_date(params[:graduation_date]) if params[:graduation_date].present?
      @users = @users.interest(params[:interest]) if params[:interest].present?
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.assign_attributes(user_params)

    # Create new UserCohort relationship if cohorts field provided.
    params[:cohorts][:id].each do |cohort_id|
      if !cohort_id.blank?
        UserCohort.create(user_id: current_user.id, cohort_id: cohort_id)
      end
    end

    # Create new UserInterest relationship if interests field provided.
    params[:interests][:interest_id].each do |id|
      UserInterest.create(user_id: current_user.id, interest_id: id) if !id.blank?
    end

    # Create new Salary object if salary fields provided.
    Salary.create(salary_params)

    if @user.save
      flash[:success] = "You're all updated!"
      redirect_to user_path(@user)
    else
      flash[:danger] = @user.errors.full_messages
      render 'edit'
    end
  end

  def search
    @user = User.find_by(name: params[:boot_name])
    redirect_to user_path(@user)
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
      :interest_id
    )
  end

  def salary_params
    params.require(:salary).permit(
      :salary,
      :year,
      :quarter,
      :job_since_dbc
    )
  end

  def filtering_params(params)
    params.slice(:city, :state, :country, :cohort, :campus, :graduation_date, :interest)
  end

end
