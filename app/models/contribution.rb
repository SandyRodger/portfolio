class Contribution < ApplicationRecord
  scope :ordered, -> { order(:position) }
end
