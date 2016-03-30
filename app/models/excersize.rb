class Excersize < ActiveRecord::Base
  validates :name, presence: true
  validates :calories_per_hour, presence: true
end
