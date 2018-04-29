class Plot < ApplicationRecord
  belongs_to :transect
  has_many   :tree_measurements, dependent: :destroy

  validates :plot_code,         presence: true, uniqueness: true
  validates :plot_name,         presence: true
  validates :plot_slope,        numericality: { only_integer: true }
  validates :plot_aspect,       numericality: { only_integer: true }
  validates :plot_elevation_m,  presence: true, numericality: {
                                        only_integer: true }
  validates :plot_latitude,     presence: true, numericality: {
                                        less_than_or_equal_to:     90,
                                        greater_than_or_equal_to: -90 }
  validates :plot_longitude,    presence: true, numericality: {
                                        less_than_or_equal_to:     180,
                                        greater_than_or_equal_to: -180 }

end
