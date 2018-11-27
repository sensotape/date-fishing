class BlockedUser < ApplicationRecord
  belongs_to :user
  belongs_to :blocked, class_name: 'User', foreign_key: 'blocked_id'
end
