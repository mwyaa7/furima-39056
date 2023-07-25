FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'000000'}
    name_chinese_characters{'test'}
    first_name_chinese_characters{'test'}
    name_katakana{'test'}
    first_name_katakana{'test'}
    date_of_birth{'000000'}
  end
end