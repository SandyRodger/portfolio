class Project < ApplicationRecord
  enum kind: { personal: 0, client: 1, open_source: 2 }

  scope :highlighted, -> { where(highlight: true).order(:position) }
  scope :ordered,     -> { order(:position) }
end
