FactoryBot.define do
  factory :guest do |g|
    g.sequence(:first_name) { |n| "John-#{n}" }
    g.sequence(:last_name) { |n| "Doe-#{n}" }
    g.sequence(:email) { |n| "john.doe-#{n}@email.com" }
    dear 'Dear'
    g.sequence(:greeting) { |n| "Dear Johnny-#{n}" }
    language 'en'
  end
end
