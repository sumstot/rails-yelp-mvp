class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # raise
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
    # raise
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restuarant).permit(:name, :address, :phone_number, :category)
  end

end
