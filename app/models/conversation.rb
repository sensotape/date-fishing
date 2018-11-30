class Conversation < ApplicationRecord
  has_many :messages
  belongs_to :nibble

  validates :allowed, default: false, inclusion: { in: [true, false] }
end
