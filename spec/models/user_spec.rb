require 'rails_helper'
 RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

   describe "ユーザー新規登録" do
    context '新規登録できるとき' do
      it 'すべての情報が存在すれば登録できる' do
        expect(@user).to be_valid
        
      end
    end
    context '新規登録できないとき' do
     it "nicknameが空だと登録できない" do
      @user.nickname = ''
       @user.valid?
       expect(@user.errors.full_messages).to include("Nickname can't be blank")
     end
     it "emailが空では登録できない" do
      
      @user.email = ''
      @user.valid?
       expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it '重複したemailが存在する場合は登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end

      it 'emailは@を含まないと登録できない' do
        @user.email = 'testmail'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end

       
      it "passwordが空では登録できない" do
        @user.password = ''
      @user.valid?
     
    expect(@user.errors.full_messages).to include("Password can't be blank",
      "Password には英字と数字の両方を含めて設定してください",
      "Password confirmation doesn't match Password")
end

    it 'passwordが6文字未満では登録できない' do
      @user.password = '00000'
      @user.password_confirmation = '00000'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end

    it '英字のみのパスワードでは登録できない' do
      @user.password = 'sssssss'
      @user.password_confirmation = 'ssssss'
      @user.valid?
      
      expect(@user.errors.full_messages).to include( "Password には英字と数字の両方を含めて設定してください")
    end

    it '数字のみのパスワードでは登録できない' do
      @user.password = '111111'
      @user.password_confirmation = '111111'
      @user.valid?
      
      expect(@user.errors.full_messages).to include("Password には英字と数字の両方を含めて設定してください")
    end

    it '全角文字を含むパスワードでは登録できない' do
      @user.password = 'ア１２３４５６'
      @user.password_confirmation = 'ア１２３４５６'
      @user.valid?
      
      expect(@user.errors.full_messages).to include("Password には英字と数字の両方を含めて設定してください")
    end

    it 'passwordとpassword_confirmationが不一致では登録できない' do
      @user.password = '123456'
      @user.password_confirmation = '1234567'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  
   it "name_chinese_charactersが空では登録できない" do
    @user.name_chinese_characters = ''
      @user.valid?
      
    expect(@user.errors.full_messages).to include("Name chinese characters can't be blank", "Name chinese characters 全角文字を使用してください")
 end
  
 it "姓（全角）に半角文字が含まれていると登録できない" do
  @user.name_chinese_characters = 'ﾔﾏﾀﾞ'
    @user.valid?
    
  expect(@user.errors.full_messages).to include("Name chinese characters 全角文字を使用してください")
end



 it "first_name_chinese_charactersが空では登録できない" do
  @user.first_name_chinese_characters = ''
      @user.valid?
     
  expect(@user.errors.full_messages).to include("First name chinese characters can't be blank",
    "First name chinese characters 全角文字を使用してください")
end

it "名（全角）に半角文字が含まれていると登録できない" do
  @user.name_chinese_characters = 'ﾔﾏﾀﾞ'
    @user.valid?
    
  expect(@user.errors.full_messages).to include("Name chinese characters 全角文字を使用してください")
end

it "name_katakanaが空では登録できない" do
  @user.name_katakana = ''
      @user.valid?
      
  expect(@user.errors.full_messages).to include("Name katakana can't be blank", "Name katakana 全角文字を使用してください")
end

it "姓（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない" do
  @user.name_katakana = 'やまだ'
      @user.valid?
      
  expect(@user.errors.full_messages).to include("Name katakana 全角文字を使用してください")
end

it "first_name_katakanaが空では登録できない" do
  @user.first_name_katakana = ''
      @user.valid?
      
  expect(@user.errors.full_messages).to include("First name katakana can't be blank", "First name katakana 全角文字を使用してください")
end

it "名（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない" do
  @user.first_name_katakana = 'はなこ'
      @user.valid?
      
  expect(@user.errors.full_messages).to include("First name katakana 全角文字を使用してください")
end

it "date_of_birthが空では登録できない" do
  @user.date_of_birth = ''
      @user.valid?
      
  expect(@user.errors.full_messages).to include("Date of birth can't be blank")
end
 end
 end
end