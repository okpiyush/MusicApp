require_relative '../app/api/v1/base'

Rails.application.routes.draw do

  mount MusicStore::V1::Base => '/'
end
