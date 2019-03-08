class Comparison < ApplicationRecord
  belongs_to :user
  has_many :comparison_cars
end
