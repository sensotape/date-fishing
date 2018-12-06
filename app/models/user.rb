class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  GENDERS = %w[Male Female Other]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :experiences
  has_many :nibbles, foreign_key: 'interested_id'
  has_many :blocked_users
  has_many :messages, foreign_key: 'sender_id' # right?
  has_many :received_messages, class_name: 'Message', foreign_key: 'recipient_id'
  has_many :photos
  has_many :notifications, foreign_key: 'recipient_id' # , dependent: :destroy

  validates :first_name, presence: true, length: { in: 2..35 }
  validates :last_name, presence: true, length: { in: 2..35 }
  validates :birthday, presence: true
  validates :gender, presence: true, inclusion: { in: GENDERS }
  validates :seeking, presence: true, inclusion: { in: GENDERS }
  validates :bio, length: { maximum: 500 }

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def age
    today = Time.now.utc.to_date
    today.year - birthday.year - (today.month > birthday.month || (today.month == birthday.month && today.day >= birthday.day) ? 0 : 1)
  end
end
