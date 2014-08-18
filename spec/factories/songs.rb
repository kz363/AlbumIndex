FactoryGirl.define do
  factory :song do
  	name { Faker::Commerce.product_name }
  	album
  	artist
  end
end
