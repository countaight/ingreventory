FactoryBot.define do
  factory :user do
    sequence(:username, 1) { |n| "genericUsername#{n}" }
    sequence(:email, 1) 	 { |n| "user#{n}@name.com" }
    password "password"
    password_confirmation "password"
  end
end
