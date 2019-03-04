class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.float :vehicle_price
      t.float :freight_delivery
      t.float :total_price
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
