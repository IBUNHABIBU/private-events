class EventAttendance < ApplicationRecord
    belongs_to :attendee, :class_name => "User", :foreign_key => "user_id"
    belongs_to :event
end
