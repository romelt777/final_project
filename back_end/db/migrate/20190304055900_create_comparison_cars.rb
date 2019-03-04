class CreateComparisonCars < ActiveRecord::Migration[5.2]
  def change
    create_table :comparison_cars do |t|
      t.references :car, foreign_key: true
      t.references :comparison, foreign_key: true

      t.timestamps
    end
  end
end
