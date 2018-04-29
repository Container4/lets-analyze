class TreeMeasurement < ApplicationRecord
  belongs_to :species
  belongs_to :plot
  has_one    :transect,         through: :plot

  validates :measurement_date,  presence: true
  validates :plot_id,           uniqueness:
                                  { scope: [:species_id, :subquadrat,
                                            :tree_label, :measurement_date] }
end
