class Character < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :superpowers, dependent: :destroy
  has_many :powers, through: :superpowers
  validates :name, presence: true
end
