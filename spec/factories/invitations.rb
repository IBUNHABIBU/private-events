FactoryBot.define do
  factory :invitation do
    email { "MyString" }
    user { nil }
    event { nil }
  end
end
