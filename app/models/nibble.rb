class Nibble < ApplicationRecord
  STATUSES = %w[pending accepted declined cancelled]

  belongs_to :interested, class_name: 'User', foreign_key: 'interested_id'
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  belongs_to :experience
  has_many :messages
  has_many :conversations, dependent: :destroy

  validates :status, presence: true, inclusion: { in: STATUSES }

  accepts_nested_attributes_for :messages
end
