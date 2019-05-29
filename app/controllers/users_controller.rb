class UsersController < ApplicationController
  def dashboard_pool
    @user_pools = Pool.find(current_user.pool_ids)
    authorize @current_user
  end

  def dashboard_rental
    @user_rentals = Rental.find(current_user.rental_ids)
    authorize @current_user
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    redirect_to user_dashboard_pool(@user)
  end
end
