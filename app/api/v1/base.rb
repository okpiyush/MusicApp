require_relative './songs'
module MusicStore
  module V1
    class Base < Grape::API
      mount MusicStore::V1::Songs
    end
  end
end