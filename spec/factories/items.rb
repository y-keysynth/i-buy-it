FactoryBot.define do

  factory :item do
    id       {1}
    title    {"テストタイトル"}
    price    {1234567890}
    details  {"テスト詳細の書き込み"}
    user_id  {1}
  end

end