FactoryBot.define do
  factory :tree_measurement do
    circumfrence_cm  { Faker::Number.number(3) }
    measurement_date { Faker::Date.between(2.years.ago, Date.today) }
    subquadrat       { Faker::Lorem.word }
    tree_label       { Faker::Name.name }

    # species          { FactoryBot.create(:species) }
    # plot             { FactoryBot.create(:plot) }
    species_id       { FactoryHelpers.get_species() }
    plot_id          { FactoryHelpers.get_plot() }
  end
end
