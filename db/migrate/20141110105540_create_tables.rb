class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :model
      t.string :brand
      t.float :price

      t.timestamps
    end
  end
end
