FactoryBot.define do

  factory :user do
    id                    {0}
    email                 {"test@test.com"}
    password              {"12345678"}
    password_confirmation {"12345678"}
    name                  {"Tester"}
    created_at            { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end