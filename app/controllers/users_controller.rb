class UsersController < ApplicationController
  def dashboard
    authorize @user
  end

  def edit
    authorize @user
  end

  def update
    authorize @user
  end
end
