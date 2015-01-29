class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :product
      t.string :brand
      t.float :price

      t.timestamps
    end
  end
end
