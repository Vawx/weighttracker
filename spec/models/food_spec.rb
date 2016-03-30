require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories }
  it { should validate_presence_of :serving_size }
  it { should validate_presence_of :server_size_measure }
  it { should validate_presence_of :fat_grams }
  it { should validate_presence_of :carbs_grams }
  it { should validate_presence_of :protien_grams }
  it { should validate_presence_of :cholesterol_milli }
  it { should validate_presence_of :weight_grams }
  it { should validate_presence_of :sat_fat_grams }
end


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
