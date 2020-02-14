3.times do |n|
  name = Faker::Games::Zelda.character
  title = Faker::Games::Zelda.item
  email = Faker::Internet.email
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               )
  Item.create!(title: title,
              details: "あ",
              price: 100,
              user_id: 3,
              )
end