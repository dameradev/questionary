FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    email { generate :email }
    password "adsfasdf"
    password_confirmation "adsfasdf"
  end
end
