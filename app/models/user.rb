class User < ApplicationRecord
  has_many :songs
  validates :name, presence: true # validating if the name is present or not
  validates :email, presence:true # validating if the email is present or not
  validates :password, presence:true
end
