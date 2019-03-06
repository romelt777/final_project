class Car < ApplicationRecord
  belongs_to :comparison
  belongs_to :picture
  belongs_to :maintenance
  belongs_to :price
  belongs_to :saved_car
  belongs_to :warranty
  belongs_to :depreciation
  belongs_to :fuel

end
