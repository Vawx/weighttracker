FactoryGirl.define do
  factory :user do
    sequence :email do |e|
      "test-#{e}@email.com"
    end
    username "capybara"
    password 'passwordeight'
  end
end
