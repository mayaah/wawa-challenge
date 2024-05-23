FactoryBot.define do
  factory :message do
    body { Faker::Lorem.sentence }
    user { FactoryBot.create(:user) }
    room { FactoryBot.create(:room) }
  end
end
