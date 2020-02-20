require 'rails_helper'

describe Item do
  before do
    @user = FactoryBot.create(:user)
  end

  it "factory_botが有効かどうか" do
    user = @user
    expect(user).to be_valid
  end

  describe '#create' do
    it "titleとpriceとdetailsとuser_idが存在すれば登録できること" do
      user = @user
      item = build(:item)
      expect(item).to be_valid
    end
  end
end