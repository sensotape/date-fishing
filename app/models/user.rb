class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  GENDERS = %w[male female other]

  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :experiences
  has_many :nibbles
  has_many :blocked_users
  has_many :messages

  validates :first_name, presence: true, length: { in: 2..35 }
  validates :last_name, presence: true, length: { in: 2..35 }
  validates :birthday, presence: true
  validates :gender, presence: true, inclusion: { in: GENDERS }
  validates :seeking, presence: true, inclusion: { in: GENDERS }

  def full_name
    "#{first_name} #{last_name}"
  end
end
