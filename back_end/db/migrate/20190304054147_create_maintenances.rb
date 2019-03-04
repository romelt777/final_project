class CreateMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenances do |t|
      t.float :first
      t.float :second
      t.float :third
      t.float :fourth
      t.float :fifth
      t.float :total
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
