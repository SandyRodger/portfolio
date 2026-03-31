class Project < ApplicationRecord
  scope :highlighted, -> { where(highlight: true).order(:position) }
  scope :ordered,     -> { order(:position) }
end
