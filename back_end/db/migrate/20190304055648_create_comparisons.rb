class CreateComparisons < ActiveRecord::Migration[5.2]
  def change
    create_table :comparisons do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
