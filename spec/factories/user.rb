# spec/factories.rb
FactoryGirl.define do
  factory :user do
    name Faker::Name.first_name
    age Faker::Number.between(1, 80)
    job_title Faker::Company.profession
  end
end