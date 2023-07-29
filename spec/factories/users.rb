FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'123456a'}
    password_confirmation      {'123456a'}
    name_chinese_characters{'山田'}
    first_name_chinese_characters{'太郎'}
    name_katakana{'ヤマダ'}
    first_name_katakana{'タロウ'}
    date_of_birth{'19970807'}
  end
end