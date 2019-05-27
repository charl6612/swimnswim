class PoolsController < ApplicationController
  def index
    @pools = Pool.all
  end

  def show
    @pool = Pool.find(params[:id])
  end

  def new
    @pool = Pool.new
  end

  def create        # POST /pools
    @pool = Pool.new(pool_params)
    if @pool.save
      redirect_to pool_path(@pool)
    else
      render :new
    end
  end

  def edit          # GET /articles/:id/edit
    @pool = Pool.find(params[:id])
  end

  def update
    @pool = Pool.find(params[:id])
    @pool.update(pool_params)
    redirect_to pool_path(@pool)
  end

  def destroy
    @pool = Pool.find(params[:id])
    @pool.destroy
    redirect_to pools_path
  end

  def pool_params
    params.require(:pool).permit(:name, :address, :description, :price_per_day, :capacity, :pictures)
  end
end
