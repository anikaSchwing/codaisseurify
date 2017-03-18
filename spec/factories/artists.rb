FactoryGirl.define do
  factory :artist do
    name        { Faker::Name.first_name }
    image       { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }
  end
end
