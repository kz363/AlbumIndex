# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :album do
  	name { Faker::Company.bs }
  	artist
  end
end
