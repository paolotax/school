# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_score do
    user ""
    survey ""
    question ""
    answer ""
    points 1
  end
end
