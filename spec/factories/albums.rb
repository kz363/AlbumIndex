FactoryGirl.define do
  factory :album do
  	name { Faker::Company.bs }
  	artist
  end
end
