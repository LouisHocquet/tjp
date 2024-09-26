class CreateRegistrations < ActiveRecord::Migration[7.1]
  def change
    create_table :registrations do |t|
      t.string :team
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
