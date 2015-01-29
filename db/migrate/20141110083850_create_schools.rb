class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :section
      t.string :rollnumber

      t.timestamps
    end
  end
end
