class Experience < ApplicationRecord
  CATEGORIES = ['Bucketlist', 'Geek & Nerd',
                'Adventure', 'Nature', 'Music',
                'Art & Culture', 'Sport & Recreation',
                'Food & Drink', 'Community', 'DIY',
                'Tourism', 'Wildcard']

  belongs_to :user
  has_many :nibbles
  has_many :photos

  geocoded_by :location

  validates :title, presence: true, length: { in: 4..50 }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :location, length: { maximum: 120 }
  validates :description, presence: true

  after_validation :geocode, if: :will_save_change_to_location?

  def humanize_time
    puts self.start_date
    #take each experience
    #determine if the start and end times are different
    #if not, then display only the start time
    #determine if the time is in the current year, if NOT,
    #display the year
    #display all times like so:
    #MONTH DATE
    #Day of week, time of day, AM/PM
    #How many days from now?
  end
end
