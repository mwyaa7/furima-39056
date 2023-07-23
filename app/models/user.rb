class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        

  validates :nickname, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :name_chinese_characters, presence: true
  validates :first_name_chinese_characters, presence: true
  validates :name_katakana, presence: true
  validates :date_of_birth, presence: true
end
