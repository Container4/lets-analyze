require 'rails_helper'

RSpec.describe Transect, type: :model do
  context "relations" do
    # # belongs to
    # it { belong_to(:transect) }
    # has many
    it { should have_many(:plots) }
  end

  context "database" do
    it { should have_db_index(:transect_code).unique(true) }
  end

  context "validators" do
    # validates :transect_code, presence: true, uniqueness: true
    # it { should validate_uniqueness_of(:transect_code).case_insensitive }
    it "enforces uniqueness of transect_code" do
      expect( FactoryBot.build(:transect) ).
              to validate_uniqueness_of(:transect_code).case_insensitive
    end
    # validates :transect_code, presence: true, uniqueness: true
    it { should validate_presence_of(:transect_code) }
    # validates :transect_name, presence: true
    it { should validate_presence_of(:transect_name) }
    # validates :target_slope,  numericality: { only_integer: true }
    it { should validate_numericality_of(:target_slope).only_integer }
    # validates :target_aspect, numericality: { only_integer: true }
    it { should validate_numericality_of(:target_aspect).only_integer }
  end

  context "methods" do
  end

end
