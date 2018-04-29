module FactoryHelpers
  extend self

  def get_plot
    # make a new artist if less than 3 artists in db
    return FactoryBot.create :plot    if Plot.count <= 3
    # Generate a random number between 1 and 100
    random_number = Faker::Number.between(1, 100)
    # 25% of the time make a new artist even if more than 3 artists
    return FactoryGirl.create :plot    if random_number <= 25
    # 75% of the time return an existing artist
    return Plot.find(rand(1..Plot.count))
  end

  def get_species
    # make a new artist if less than 3 artists in db
    return FactoryBot.create :species    if Species.count <= 3
    # Generate a random number between 1 and 100
    random_number = Faker::Number.between(1, 100)
    # 25% of the time make a new artist even if more than 3 artists
    return FactoryBot.create :species    if random_number <= 25
    # 75% of the time return an existing artist
    return Species.find(rand(1..Species.count))
  end

  def get_transect
    # make a new artist if less than 3 artists in db
    return FactoryBot.create :transect    if Transect.count <= 3
    # Generate a random number between 1 and 100
    random_number = Faker::Number.between(1, 100)
    # 25% of the time make a new artist even if more than 3 artists
    return FactoryBot.create :transect    if random_number <= 25
    # 75% of the time return an existing artist
    return Transect.find(rand(1..Transect.count))
  end
end
