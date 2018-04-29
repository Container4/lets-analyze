require 'rails_helper'

RSpec.describe Species, type: :model do

  context "relations" do
    # belongs to
    # it { belong_to(:transect) }
    # has_many :tree_measurements, dependent: :destroy
    it { should have_many(:tree_meausrements) }
  end

  context "database" do
    it { should have_db_index(:species_code).unique(true) }
  end

  context "validators" do
    # it { should validate_uniqueness_of(:plot_code).case_insensitive }
    it "enforces uniqueness of species_code" do
      expect( FactoryBot.build(:species) ).
              to validate_uniqueness_of(:species_code).case_insensitive
    end

    it { should validate_presence_of(:species_code) }
    it { should validate_presence_of(:species_name) }
    it { should validate_presence_of(:foilage_strategy) }
    it { should validate_presence_of(:foilage_type) }
    it { should validate_presence_of(:taxonomy) }

    # due to conditional validation, request need a date
    it "enforces inclusion" do
      expect(FactoryBot.build(:species)).
            to validate_inclusion_of(:foilage_strategy).
            in_array(Species::FOILAGE_STRATEGIES)
    end
    it "enforces inclusion" do
      expect(FactoryBot.build(:species)).
            to validate_inclusion_of(:foilage_type).
            in_array(Species::FOILAGE_TYPES)
    end
    it "enforces inclusion" do
      expect(FactoryBot.build(:species)).
            to validate_inclusion_of(:taxonomy).
            in_array(Species::TAXONOMIES)
    end
  end

  context "methods" do
  end

end
