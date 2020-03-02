FactoryBot.define do
  factory :event do
    title { 'MyString' }
    description { 'MyText' }
    location { 'MyString' }
    date { '2020-02-27 11:44:40' }
    user { nil }
  end
end
