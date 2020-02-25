class Event < ApplicationRecord
    #has_and_belongs_to_many :attendee, :class_name => "user", :join_table => "events_users"
    has_many :event_attendances
end
