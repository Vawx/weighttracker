require 'rails_helper'

RSpec.describe Excersize, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories_per_hour }
end
