class Subject < ApplicationRecord
  has_many :reviews, dependent: :destroy
  def avg_score
    unless self.reviews.empty?
      reviews/average(:score).round(1).to_f
    else
      0.0
    end
  end
  def review_score_percentage
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end
end
