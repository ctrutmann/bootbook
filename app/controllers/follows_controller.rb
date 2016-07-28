class FollowsController < ApplicationController
  def index
    @followers = Follow.where(followee_id: current_user.id)
    @following = Follow.where(follower_id: current_user.id)
  end

  def new
  end

  def create
    @follow = Follow.create(follow_params)
    if @follow.save
      @follow.save
      redirect_to user_path(params[:followee_id])
    else
      flash[:danger] = @user.errors.full_messages
      redirect_to 'users'
    end
  end

  def edit

  end

  def destroy
    Follow.find(params[:id]).destroy
    redirect_to user_path(params[:followee_id])
  end

  private

  def follow_params
    params.permit(:id, :followee_id, :follower_id)
  end


end
