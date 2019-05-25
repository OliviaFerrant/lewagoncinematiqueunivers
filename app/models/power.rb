class Power < ApplicationRecord
  has_many :superpowers
  validates :name, presence: true
  before_destroy :check

  def check
    false unless superpower.empty?
  end
end
