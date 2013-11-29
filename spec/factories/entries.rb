# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    event "MyString"
    date "MyString"
    location "MyString"
    type ""
  end
end
