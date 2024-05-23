FactoryBot.define do
  factory :room do
    name { Faker::Hobby.unique.activity }
  end
end