class Event < ApplicationRecord
  belongs_to :user
  has_many :attendees, :class_name =>"EventAttendee", :foreign_key =>"event_attendee_id"
end
