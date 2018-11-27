class Experience < ApplicationRecord
  CATEGORIES = ['Bucketlist', 'Geek & Nerd',
                'Adventure', 'Nature', 'Music',
                'Art & Culture', 'Sport & Recreation',
                'Food & Drink', 'Community', 'DIY',
                'Tourism', 'Wildcard']

  mount_uploaders :photos, PhotoUploader
  # serialize :photos, JSON

  belongs_to :user
  has_many :nibbles

  geocoded_by :location

  validates :title, presence: true, length: { in: 4..50 }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :location, length: { maximum: 120 }
  validates :description, presence: true

  after_validation :geocode, if: :will_save_change_to_location?
end
