# frozen_string_literal: true

class ReviewsController < ApplicationController
  before_filter :deny_access, unless: :logged_in?

  def create
    @review = Review.new(reviews_params)
    if @review.valid?
      @review.save!
      redirect_to product_path(id: params[:product_id])
    else
      redirect_to root_path
    end
  end

  def destroy
    review = Review.find params[:id]
    review.destroy!
    redirect_to root_url
  end

  protected

  def logged_in?
    current_user ? true : false
  end

  private

  def reviews_params
    params.require(:reviews).permit(:user_id, :product_id, :description, :rating)
  end
end
