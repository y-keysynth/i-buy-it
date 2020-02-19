FactoryBot.define do

  factory :user do
    email                 {"test@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    name                  {"Tester"}
  end

end