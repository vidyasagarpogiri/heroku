class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.string :colour

      t.timestamps
    end
  end
end
