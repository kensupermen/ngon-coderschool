# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Section.count == 0
  %w(Breakfast Lunch Dinner Drinks).each do |name|
    Section.create(name: name)
  end
else
  puts "You already have some section data"
end

food_list = [
	[ "Pho Bo", "Vietnamese famous noodle", "Breakfast", 35000],
	[ "Bun Bo", "Vietnamese famous noodle", "Breakfast", 35000],
	[ "Hu Tieu", "Vietnamese famous noodle", "Breakfast", 30000],
	[ "Op la", "Made from eggs", "Breakfast", 15000],
	[ "Banh Canh", "Vietnamese famous noodle", "Breakfast", 25000],

	[ "Com Ga", "Lunch meal", "Lunch", 35000],
	[ "Com Suon", "Lunch meal", "Lunch", 15000],
	[ "Com Nieu", "Lunch meal", "Lunch", 25000],
	[ "My Quang", "Lunch meal", "Lunch", 65000],
	[ "Chao Long", "Lunch meal", "Lunch", 10000],


[ "Com Ga", "Lunch meal", "Dinner", 35000],
	[ "Com Suon", "Lunch meal", "Dinner", 15000],
	[ "Com Nieu", "Lunch meal", "Dinner", 25000],
	[ "My Quang", "Lunch meal", "Dinner", 65000],
	[ "Chao Long", "Lunch meal", "Dinner", 10000],

[ "Com Ga", "Lunch meal", "Dinks", 35000],
	[ "Com Suon", "Lunch meal", "Dinks", 15000],
	[ "Com Nieu", "Lunch meal", "Dinks", 25000],
	[ "My Quang", "Lunch meal", "Dinks", 65000],
	[ "Chao Long", "Lunch meal", "Dinks", 10000],
]

food_list.each do |name,desc,section,price|
  section = Section.where(name: section).take
  FoodItem.create(name: name, description: desc, price: price, section: section)
end
