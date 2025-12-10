class Project < ApplicationRecord
  enum status: { planned: 0, in_progress: 1, done: 2 }

  scope :highlighted, -> { where(highlight: true).order(:position) }
  scope :ordered,     -> { order(:position) }
end
 