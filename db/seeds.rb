# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
t.string   "name"
t.integer  "calories"
t.integer  "serving_size"
t.string   "server_size_measure"
t.integer  "fat_grams"
t.integer  "carbs_grams"
t.integer  "protien_grams"
t.integer  "cholesterol_milli"
t.float    "weight_grams"
t.float    "sat_fat_grams"
=end

foods_list = [
  ["1000 Island Dressing", 25, 1, "TBSP", 2, 2, 0, 2, 15.0, 0.2],
  ["100% Natural Cereal", 135, 1, "OZ", 6, 18, 3, 0, 28.35, 4.1],
  ["Kellog's Bran Flakes", 135, 1, "OZ", 1, 18, 3, 0, 28.35, 0.1],
  ["Apple Pie", 405, 1, "Piece", 18, 405, 60, 0, 158, 4.6],

]

foods_list.each do |name, calories, serving_size, server_size_measure,fat_grams, carbs_grams, protien_grams, cholesterol_milli, weight_grams, sat_fat_grams|
  Food.create( name: name, calories: calories, serving_size: serving_size, server_size_measure: server_size_measure, fat_grams: fat_grams, carbs_grams: carbs_grams, protien_grams: protien_grams, cholesterol_milli: cholesterol_milli, weight_grams: weight_grams, sat_fat_grams: sat_fat_grams );
end
