class Experience < ApplicationRecord
  CATEGORIES = ['Bucketlist', 'Geek & Nerd',
                'Adventure', 'Nature', 'Music',
                'Art & Culture', 'Sport & Recreation',
                'Food & Drink', 'Community', 'DIY',
                'Tourism', 'Wildcard']

  belongs_to :user
  has_many :nibbles

  validates :title, presence: true, length: { in: 1..50 }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :location, length: { maximum: 120 }
  validates :description, presence: true
end
