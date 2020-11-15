FactoryBot.define do
  factory :review do
    reviewer_name { "MyString" }
    title { "MyString" }
    description { "MyText" }
    score { 1 }
    hospital { nil }
  end
end
