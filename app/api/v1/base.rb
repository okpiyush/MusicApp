require_relative './songs'
require_relative './users'
module MusicStore
  module V1
    class Base < Grape::API

      mount Songs
      mount Users
    end
  end
end