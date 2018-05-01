FactoryBot.define do
  factory :user do
    username "genericUsername"
    email "user@name.com"
    password "password"
    password_confirmation "password"
  end
end
