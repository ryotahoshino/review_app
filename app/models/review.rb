class Review < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  validates :score, presence: true
end
