class CreateWarranties < ActiveRecord::Migration[5.2]
  def change
    create_table :warranties do |t|
      t.string :bumper
      t.string :powertrain
      t.string :roadside
      t.string :rust
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
