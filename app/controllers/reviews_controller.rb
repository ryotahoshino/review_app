class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @subject = Subject.find(params[:subject_id])
    @reviews = @subject.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to subject_reviews_path(@review.subject)
    else
      @subject = Subject.find(params[:subject_id])
      render "subjects/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:subject_id, :score, :content)
  end
end