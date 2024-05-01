class ReviewsController < ApplicationController
  before_action :set_restaurant
  before_action :set_review, only: [:show, :destroy]

  # GET /restaurants/1/reviews/new
  def new
    @review = @restaurant.reviews.build
  end

  # POST /restaurants/1/reviews
  def create
    @review = @restaurant.reviews.build(review_params)

    if @review.save
      redirect_to @restaurant, notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  # DELETE /restaurants/1/reviews/1
  def destroy
    @review.destroy
    redirect_to @restaurant, notice: 'Review was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def set_review
      @review = @restaurant.reviews.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
