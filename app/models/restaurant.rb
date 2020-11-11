class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian'].freeze
  validates :name, :address, :category, presence: true
  validates_inclusion_of :category, in: CATEGORY
end
