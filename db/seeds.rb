# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

p "cleaning db ..."

Category.destroy_all
Registration.destroy_all

p "db clean 👌"

p "creating categories ..."
Category.create(name: "Category U-10", year_min: 2015, year_max: 2016)
Category.create(name: "Category U-12", year_min: 2013, year_max: 2014)
Category.create(name: "Category U-14", year_min: 2011, year_max: 2012)
Category.create(name: "Category U-16", year_min: 2009, year_max: 2010)
p "#{Category.count} categories created ✅"

p "creating registrations ..."
Registration.create(club_name: "WHC", phone:"0678980948", email: "toto@gmail.com", country: "France", firstname: "John", lastname: "Doe", message: "Fake test")
p "#{Registration.count} categories created ✅"
