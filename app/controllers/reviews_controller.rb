class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create, :show, :edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant_id = @restaurant.id
    return redirect_to restaurant_path(@restaurant) if @review.save
    render :new
  end

  def index
    @reviews = Review.all

  end

  def show

  end
  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
