class Event < ApplicationRecord
    belongs_to :user
    has_many :attendees, :through => :event_attendances, source: :user
end
