FactoryBot.define do
  factory :article do
    title { "Article title" }
    text { "Article title" }
    factory :article_with_comments do
      after :create do |article, avaluator|
        create_list :comment, 3, article: article
      end
    end
  end
end
