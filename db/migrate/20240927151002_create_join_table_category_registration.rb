class CreateJoinTableCategoryRegistration < ActiveRecord::Migration[7.1]
  def change
    create_join_table :categories, :registrations do |t|
      t.index [:category_id, :registration_id]
      t.index [:registration_id, :category_id]
    end
  end
end
