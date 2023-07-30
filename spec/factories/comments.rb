FactoryBot.define do
  factory :comment do
    author { "Jon" }
    sequence(:body) { |n| "Comment body #{n}" }
  end
end
