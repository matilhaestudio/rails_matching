# spec/factories.rb
FactoryGirl.define do
  factory :user do
  	sequence(:name) { Faker::Name.first_name }
    sequence(:age) { Faker::Number.between(20, 25) }
    sequence(:job_title) { Faker::Company.profession }
  end
end