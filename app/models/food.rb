class Food < ActiveRecord::Base
  validates :name, presence: true
  validates :calories, presence: true
  validates :serving_size, presence: true
  validates :server_size_measure, presence: true
  validates :fat_grams, presence: true
  validates :carbs_grams, presence: true
  validates :protien_grams, presence: true
  validates :cholesterol_milli, presence: true
  validates :weight_grams, presence: true
  validates :sat_fat_grams, presence: true
end
