class UsersController < ApplicationController
  def dashboard
    @user_pools = Pool.find(current_user.pool_ids)
    authorize @current_user
  end

  def edit
    authorize @user
  end

  def update
    authorize @user
  end
end
