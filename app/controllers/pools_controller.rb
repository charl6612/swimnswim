class PoolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @pools = policy_scope(Pool)
  end

  def show
    @pool = Pool.find(params[:id])
    authorize @pool
  end

  def new
    @pool = Pool.new
    authorize @pool
  end

  def create        # POST /pools
    @pool = Pool.new(pool_params)
    @pool.user = current_user
    authorize @pool
    if @pool.save
      redirect_to pool_path(@pool)
    else
      render :new
    end
  end

  def edit          # GET /articles/:id/edit
    @pool = Pool.find(params[:id])
    authorize @pool
  end

  def update
    @pool = Pool.find(params[:id])
    authorize @pool
    @pool.update(pool_params)
    redirect_to pool_path(@pool)
  end

  def destroy
    @pool = Pool.find(params[:id])
    authorize @pool
    @pool.destroy
    redirect_to pools_path
  end

  def pool_params
    params.require(:pool).permit(:name, :address, :description, :price_per_day, :capacity, :picture)
  end
end

# t.string "address"
# t.text "description"
# t.integer "price_per_day"
# t.integer "capacity"
# t.string "picture"
# t.bigint "user_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.string "name"
# t.index ["user_id"], name: "index_pools_on_user_id"
