class AddComparisonCarToComparisons < ActiveRecord::Migration[5.2]
  def change
    add_reference :comparisons, :comparison_car, foreign_key: true
  end
end
