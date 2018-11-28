class Photo < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  belongs_to :user, optional: true
  belongs_to :experience, optional: true

  validates :picture, presence: true
end
