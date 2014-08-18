# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :song do
  	name { Faker::Commerce.product_name }
  	album
  end
end
