class Nibble < ApplicationRecord
  STATUSES = %w[pending accepted declined cancelled]

  belongs_to :interested, class_name: 'User', foreign_key: 'interested_id'
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  belongs_to :experience

  validates :status, presence: true, inclusion: { in: STATUSES }
  validates :allowed, default: false, inclusion: { in: [true, false] }
end
