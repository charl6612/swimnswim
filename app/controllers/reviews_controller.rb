class ReviewsController < ApplicationController
  def new
    @pool = Pool.find(params[:pool_id])
    @review = Review.new
    authorize @review
  end

  def create
    @pool = Pool.find(params[:pool_id])
    @review = Review.new(review_params)
    @review.pool = Pool.find(params[:pool_id])
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to pool_path(@pool)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:pool_id, :user_id, :rating, :description)
  end
end
