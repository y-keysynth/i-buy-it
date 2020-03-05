FactoryBot.define do

  factory :item do
    id          {1}
    title       {"テストタイトル"}
    details     {"テスト詳細の書き込み"}
    price       {1234567890}
    created_at  { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user_id     {0}
    likes_count {}
  end

end