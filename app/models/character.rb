class Character < ApplicationRecord
  has_many :powers
  validates :name, presence: true
end
