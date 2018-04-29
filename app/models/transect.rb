class Transect < ApplicationRecord
  has_many :plots,          dependent: :destroy

  validates :transect_code, presence: true, uniqueness: true
  validates :transect_name, presence: true
  validates :target_slope,  numericality: { only_integer: true }
  validates :target_aspect, numericality: { only_integer: true }

end
