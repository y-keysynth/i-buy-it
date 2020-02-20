FactoryBot.define do

  factory :user do
    id                    {1}
    email                 {"test@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    name                  {"Tester"}
  end

end