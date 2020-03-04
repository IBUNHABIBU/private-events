class User < ApplicationRecord
  attr_accessor :remember_token
  has_many :events, dependent: :delete_all
  has_many :event_attendees, foreign_key: 'user_id'
  has_many :attended_events, through: :event_attendees
  has_many :invitations, foreign_key: 'invitee'
  has_many :invited_events, through: :invitations
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  def upcoming_events
    invited_events.upcoming
  end

  def past_events
    invited_events.past
  end

  def forget
    update_attribute(:remember_digest, nil)
  end
end
