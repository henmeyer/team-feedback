FactoryBot.define do
  factory :feedback do
    association :sender, factory: :user
    association :receiverable, factory: :user
    association :account
    title { "Ótimo trabalho em equipe!" }
    content { "Ótimo trabalho em equipe!" }
    status { "pending" }
  end
end
