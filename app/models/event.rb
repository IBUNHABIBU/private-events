class Event < ApplicationRecord
  belongs_to :user
  has_many :event_attendee, foreign_key: :event_id
  has_many :attendees, through: :event_attendee
  has_many :invitations, foreign_key: :event_id
  has_many :invitees, through: :invitations
  belongs_to :creator, class_name: 'User', foreign_key: :user_id
  scope :upcoming, -> { where('date > ?', DateTime.now) }
  scope :past, -> { where('date < ?', DateTime.now) }
end
