class AddPriceToCars < ActiveRecord::Migration[5.2]
  def change
    add_reference :cars, :price, foreign_key: true
  end
end
