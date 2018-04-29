require 'rails_helper'

RSpec.describe TreeMeasurement, type: :model do

  context "relations" do
    # belongs_to :plot
    it { belong_to(:plot) }
    # belongs_to :species
    it { belong_to(:species) }
    # has_one    :transect,         through: :tree_plot
    it { should have_one(:transect) }
  end

  # validates :plot_id, uniqueness: { scope: [:tree_specy_id, :subquadrat,
  #                                           :tree_label, :measurement_date] }
  # context "database" do
  #   it { should have_db_index(:species_code).unique(true) }
  # end

  context "validators" do
    # validates :measurement_date,  presence: true
    it { should validate_presence_of(:measurement_date) }
    # validate measurement_date is a date
  end

  context "methods" do
  end

end
