FactoryBot.define do
  factory :transect do
    transect_code { Faker::Lorem.word }
    transect_name { Faker::Name.name }
    target_slope  { Faker::Number.between(1, 70) }
    target_aspect { Faker::Number.between(1, 359) }
  end
end
