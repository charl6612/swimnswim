class RentalsController < ApplicationController
  def new
    @pool = Pool.find(params[:pool_id])
    @rental = Rental.new
    authorize @rental
  end

  def create        # POST /pools
    @rental = Rental.new(rental_params)
    authorize @rental
    @rental.pool = Pool.find(params[:pool_id])
    @pool = @rental.pool
    @rental.user = current_user
    if @rental.save
      redirect_to pool_path(@rental.pool)
    else
      raise
      render :new
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:date, :comment, :user_number, :pool_id)
  end

end
