require_relative './songs'
require_relative './users'
module MusicStore
  module V1
    class Base < Grape::API
      mount MusicStore::V1::Songs
      mount MusicStore::V1::Users
    end
  end
end