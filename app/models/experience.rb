class Experience < ApplicationRecord
  CATEGORIES = ['Bucketlist', 'Geek & Nerd',
                'Adventure', 'Nature', 'Music',
                'Art & Culture', 'Sport & Recreation',
                'Food & Drink', 'Community', 'DIY',
                'Tourism', 'Wildcard']

  MONTHS = [nil, 'January', 'February', 'March', 'April',
            'May', 'June', 'July', 'August', 'September',
            'October', 'November', 'December']

  include PgSearch
  pg_search_scope :search_by_title_and_category_and_location_and_description,
    against: [:title, :category, :location, :description],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  belongs_to :user
  has_many :nibbles
  has_many :photos
  accepts_nested_attributes_for :photos

  geocoded_by :location

  validates :title, presence: true, length: { in: 4..50 }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :description, presence: true
  validates :location, length: { maximum: 120 }

  after_validation :geocode, if: :will_save_change_to_location?

  def humanize_date
    if start_date.to_date == end_date.to_date
      "#{MONTHS[start_date.month]} #{start_date.day}"
    else
      "#{MONTHS[start_date.month]} #{start_date.day} – #{MONTHS[end_date.month]} #{end_date.day}"
    end
  end

  def humanize_time
    time = start_date.to_time.strftime('%I:%M%p')
    if time == "12:00AM"
      "Midnight"
    elsif time == "12:00PM"
      "Midday"
    else
      time
    end
  end

  def time_until_date
    today = Date.today
    days = (start_date.to_date - today.to_date).to_i
    case days
    when 0 then "Today"
    when 1 then "Tomorrow"
    when 2..364 then "#{days} days away"
    else
      "More than a year off"
    end
  end
end
