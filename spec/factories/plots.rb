FactoryBot.define do
  factory :plot do
    plot_code        { Faker::Lorem.word }
    plot_name        { Faker::Name.name }
    plot_slope       { Faker::Number.between(1, 70) }
    plot_aspect      { Faker::Number.between(1, 359) }
    plot_elevation_m { Faker::Number.between(10, 3500) }
    plot_latitude    { Faker::Number.between(-85, 85) }
    plot_longitude   { Faker::Number.between(-180, 180) }

    transect_id { FactoryHelpers.get_transect() }
  end
end
