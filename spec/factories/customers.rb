FactoryBot.define do
  factory :customer do
    name { "John Pieter James" }
    email { "johnpieterjames@gmail.com" }
    phone { "089847368234" }
  end

  factory :invalid_customer, parent: :customer do
    name { nil }
    email { nil }
    phone { nil }
  end
end
