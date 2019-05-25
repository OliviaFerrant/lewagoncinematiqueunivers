class Character < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :powers
  validates :name, presence: true
end
