require 'rails_helper'

describe User do
  describe '#create' do
    # nameとemail、passwordとpassword_confirmationが存在すれば登録できること
    # 運用用「urlとemailとランダムパスワード、passwordとpassword_confirmationが存在すれば登録できること」に変更
    it "is valid with a name, email, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end

    # nameが空では登録できないこと
    # 運用用「urlが空では登録できないこと」に変更
    it "is invalid without a name" do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    # 運用用「ランダムパスワードが空では登録できないこと」
    # 運用用「urlが空では登録できないこと」

    # emailが空では登録できないこと
    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("が入力されていません。")
    end

    # passwordが空では登録できないこと
    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("が入力されていません。")
    end

    # passwordが存在してもpassword_confirmationが空では登録できないこと
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    # 重複したemailが存在する場合登録できないこと
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("は既に使用されています。")
    end

    # passwordが6文字以上であれば登録できること
    it "is valid with a password that has more than 6 characters " do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user).to be_valid
    end

    # passwordが5文字以下であれば登録できないこと
    it "is invalid with a password that has less than 5 characters " do
      user = build(:user, password: "00000", password_confirmation: "00000")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上に設定して下さい。")
    end

    # 重複した名前が存在する場合登録できないこと
    # 運用用「重複したurlが存在する場合登録できないこと」に変更
    it "is invalid with a duplicate name address" do
      user = create(:user)
      another_user = build(:user, name: user.name)
      another_user.valid?
      expect(another_user.errors[:name]).to include("はすでに存在します")
    end

  end
end