class Message < ApplicationRecord
  belongs_to :nibble
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :recipient, class_name: 'User', foreign_key: 'recipient_id'

  validates :body, presence: true, length: { maximum: 1000 }
  validates :read, default: false, inclusion: { in: [true, false] }
end
