require 'rails_helper'
 RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

   describe "ユーザー新規登録" do
     it "nicknameが空だと登録できない" do
      
      @user.nickname = ''
       @user.valid?
       expect(@user.errors.full_messages).to include("Nickname can't be blank")
     end
     it "emailが空では登録できない" do
      @user = FactoryBot.build(:user)
      @user.email = ''
      @user.valid?
       expect(@user.errors.full_messages).to include("Email can't be blank")

       end
      it "passwordが空では登録できない" do
        @user.password = ''
      @user.valid?
    expect(@user.errors.full_messages).to include("Password can't be blank")

   end
   it "name_chinese_charactersが空では登録できない" do
    @user.name_chinese_characters = ''
      @user.valid?
    expect(@user.errors.full_messages).to include("name_chinese_characters can't be blank")
 end
  
 it "first_name_chinese_charactersが空では登録できない" do
  @user.first_name_chinese_characters = ''
      @user.valid?
  expect(@user.errors.full_messages).to include("first_name_chinese_characters can't be blank")
end

it "name_katakanaが空では登録できない" do
  @user.name_katakana = ''
      @user.valid?
  expect(@user.errors.full_messages).to include("name_katakana can't be blank")
end

it "first_name_katakanaが空では登録できない" do
  @user.first_name_katakana = ''
      @user.valid?
  expect(@user.errors.full_messages).to include("first_name_katakana can't be blank")
end

it "date_of_birthが空では登録できない" do
  @user.date_of_birth = ''
      @user.valid?
  expect(@user.errors.full_messages).to include("date_of_birth can't be blank")
end