class Transect < ApplicationRecord
  has_many :plots,              dependent: :destroy
  # doesn't do nested deletes on purpose (protect against probs with join tables)
  has_many :tree_meausrements,  through:   :plots
  has_many :species,            through:   :tree_meausrements
  # has_many :transect_admin_editor, dependent: :destroy
  # has_many :admins,            through: :transect_admin_editor

  validates :transect_code, presence: true, uniqueness: true
  validates :transect_name, presence: true
  validates :target_slope,  numericality: { only_integer: true }
  validates :target_aspect, numericality: { only_integer: true }
end
