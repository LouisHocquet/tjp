class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :year_min
      t.integer :year_max

      t.timestamps
    end
  end
end
