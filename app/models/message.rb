class Message < ApplicationRecord
  after_create :broadcast_message

  belongs_to :conversation, optional: true
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :recipient, class_name: 'User', foreign_key: 'recipient_id'

  validates :body, presence: true, length: { maximum: 1000 }, allow_blank: false
  validates :read, default: false, inclusion: { in: [true, false] }

  scope :unread, -> { where(read: false) }
  scope :sorted, -> { order(created_at: :asc) }

  def broadcast_message
    ActionCable.server.broadcast("conversation_#{self.conversation.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, user_is_messages_author: false }
      ),
      current_user_id: self.sender.id
    })
  end

  def read!
    self.read = true
    self.save
  end

  def date
    created_at.strftime("%b %d")
  end

  def time
    created_at.strftime("%I:%M %p")
  end
end
