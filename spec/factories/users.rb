FactoryBot.define do

  factory :user do
    id                    {0}
    email                 {"test@test.com"}
    password              {"12345678"}
    password_confirmation {"12345678"}
    name                  {"Tester"}
  end

end