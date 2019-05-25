class Superpower < ApplicationRecord
  belongs_to :character
  belongs_to :power
  validates :character, presence: true
  validates :power, presence: true
  validates_uniqueness_of :character, scope: :power
end
