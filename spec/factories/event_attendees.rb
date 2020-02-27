FactoryBot.define do
  factory :event_attendee do
    user { nil }
    event { nil }
    email { "MyString" }
  end
end
