class CreateRegistrations < ActiveRecord::Migration[7.1]
  def change
    create_table :registrations do |t|
      t.string :club_name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
