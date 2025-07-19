FactoryBot.define do
  factory :team do
    association :account
    association :owner, factory: :user
    name { Faker::Team.name }
  end
end
