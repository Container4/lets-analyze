require 'rails_helper'

RSpec.describe Plot, type: :model do

  context "database" do
    it { should have_db_index(:plot_code).unique(true) }
  end

  context "validators" do

    # it { should validate_uniqueness_of(:plot_code).case_insensitive }
    it "enforces uniqueness of plot_code" do
      expect( FactoryBot.build(:plot) ).
              to validate_uniqueness_of(:plot_code).
                  case_insensitive
    end

    it { should validate_presence_of(:plot_code) }
    it { should validate_presence_of(:plot_name) }

    it { should validate_numericality_of(:plot_slope).only_integer }
    it { should validate_numericality_of(:plot_aspect).only_integer }
    it { should validate_numericality_of(:plot_elevation_m).only_integer }

    it { should validate_numericality_of(:plot_latitude) }
    it { should validate_numericality_of(:plot_longitude) }
  end

  context "relations" do
    # belongs to
    it { belong_to(:transect) }
    # has many
    it { should have_many(:tree_meausrements) }
  end

  context "methods" do
  end
end
