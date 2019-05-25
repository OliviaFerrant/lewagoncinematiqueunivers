class Character < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :superpowers
  has_many :powers, through: :superpowers
  validates :name, presence: true
end
