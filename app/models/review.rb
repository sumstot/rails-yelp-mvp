class Review < ApplicationRecord
  validates :rating, presence: true
  validates :content, presence: true
  belongs_to :Restaurant
end
