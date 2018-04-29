FactoryBot.define do
  factory :species do
    species_code     { Faker::Lorem.word }
    species_name     { Faker::Name.name }
    foilage_strategy { Species::FOILAGE_STRATEGIES.sample }
    foilage_type     { Species::FOILAGE_TYPES.sample }
    taxonomy         { Species::TAXONOMIES.sample }
  end
end
