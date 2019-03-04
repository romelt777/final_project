class CreateFuels < ActiveRecord::Migration[5.2]
  def change
    create_table :fuels do |t|
      t.float :auto_city
      t.string :auto_highway_float
      t.float :auto_combined
      t.float :manual_city
      t.float :manual_highway
      t.float :manual_combined
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
