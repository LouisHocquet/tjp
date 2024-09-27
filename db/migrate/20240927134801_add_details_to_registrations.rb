class AddDetailsToRegistrations < ActiveRecord::Migration[7.1]
  def change
    add_column :registrations, :country, :string
    add_column :registrations, :firstname, :string
    add_column :registrations, :lastname, :string
    add_column :registrations, :phone, :string
  end
end
