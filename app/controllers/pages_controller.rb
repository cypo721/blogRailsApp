class PagesController < ApplicationController
  def about
  end

  def list_users
    @users = User.all
  end

  def edit_avatar
  end

  def update_avatar
    @user = User.find(current_user.id)
    @user.update_attribute(:avatar, params[:user][:avatar]) unless (params[:user]).nil?
    redirect_to root_path
  end
end
