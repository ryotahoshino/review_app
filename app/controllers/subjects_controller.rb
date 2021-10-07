class SubjectsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
    @review = Review.new
  end
end
