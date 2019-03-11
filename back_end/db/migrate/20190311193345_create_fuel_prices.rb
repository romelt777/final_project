class CreateFuelPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :fuel_prices do |t|
      t.integer :first
      t.integer :second
      t.integer :third
      t.integer :fourth
      t.integer :fifth
      t.integer :total
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
