class Power < ApplicationRecord
  has_many :superpower
  validates :power, presence: true
  before_destroy :check

  def check
    false unless superpower.empty?
  end
end
