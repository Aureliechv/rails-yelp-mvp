class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = [0, 1, 2, 3, 4, 5].freeze
  validates :content, :rating, presence: true
  validates_inclusion_of :rating, in: RATING
  validates :rating, numericality: { only_integer: true }
end
