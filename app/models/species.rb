class Species < ApplicationRecord

  FOILAGE_STRATEGIES = %w[deciduous evergreen]
  FOILAGE_TYPES      = %w[broadleaf needle]
  TAXONOMIES         = %w[angiosperm conifer]

  has_many :tree_measurements, dependent: :destroy

  validates :species_code,     presence: true, uniqueness: true
  validates :species_name,     presence: true
  validates :foilage_strategy, presence: true, inclusion: {
                                              in: Species::FOILAGE_STRATEGIES }
  validates :foilage_type,     presence: true, inclusion: {
                                              in: Species::FOILAGE_TYPES }
  validates :taxonomy,         presence: true, inclusion: {
                                              in: Species::TAXONOMIES }

end
