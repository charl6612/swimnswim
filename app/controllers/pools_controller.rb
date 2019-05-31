class PoolsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      @pools = policy_scope(Pool.near("%#{params[:query]}%", 10))
      if @pools.empty?
        @pools = policy_scope(Pool)
      else
        @pools = policy_scope(Pool.near("%#{params[:query]}%", 10))
     end
    else
      @pools = policy_scope(Pool)
    end

    @markers = @pools.where.not(latitude: nil, longitude: nil).map do |pool|
      {
        lat: pool.latitude,
        lng: pool.longitude,
        infoWindow: render_to_string(partial: "shared/infowindow", locals: { pool: pool }),
      }
    end
  end

  def show
    @pool = Pool.find(params[:id])
    @reviews = @pool.reviews
    @rental = Rental.new
    authorize @pool
  end

  def new
    @pool = Pool.new
    authorize @pool
  end

  def create
    # POST /pools
    @pool = Pool.new(pool_params)
    @pool.user = current_user
    authorize @pool
    if @pool.save
      redirect_to pool_path(@pool)
    else
      render :new
    end
  end

  def edit # GET /articles/:id/edit
    @pool = Pool.find(params[:id])
    authorize @pool
  end

  def update
    @pool = Pool.find(params[:id])
    authorize @pool
    @pool.update(pool_params)
    redirect_to users_dashboard_pool_path
  end

  def destroy
    @pool = Pool.find(params[:id])
    authorize @pool
    @pool.destroy
    redirect_to users_dashboard_pool_path
  end

  def pool_params
    params.require(:pool).permit(:name, :address, :description, :price_per_day, :capacity, :picture, :picture1, :picture2)
  end
end
