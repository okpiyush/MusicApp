class Song < ApplicationRecord
  # belongs_to :user # defining who the data belongs too
  validates :name, presence: true #for validating the presence of a name
  validates :url, presence: true # for validating the presence of the url
  validates :singer, presence: true # for calidating the presence of a singer
  validates :rating , presence:true # would use it for the user
end
