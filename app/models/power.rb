class Power < ApplicationRecord
  belongs_to :character
  validates :power, presence: true
end
