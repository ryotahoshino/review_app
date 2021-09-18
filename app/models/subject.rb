class Subject < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
