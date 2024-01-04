require_relative '../../../lib/music_app_services/application_services'

module MusicStore
  module V1
    class Songs < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api

      desc 'create a new song'
      params do
        requires :name, type: String
        requires :singer, type: String
        requires :url, type: String
        requires :rating, type: Float
        requires :user, type: String
      end
      post do
        SongLogics::create(params[:name],params[:singer],params[:user],params[:url],params[:rating])
        {
          "message":"Song was created"
        }
      end




      desc "Getting all the songs"
      get "/music" do
        SongLogics.getAll()
      end



      desc " getting a specific song"
      route_param :id do
        get "/music" do
          song = SongLogics::getSong(:id)
          present song
        end
      end




      desc "Editing the song"
      params do
        requires :name, type: String
        requires :singer, type: String
        requires :url, type: String
        requires :rating, type: Float
        requires :user, type: String
      end
      route_param :id do
        put "/music" do
         SongLogics::editSong(:id,:name,:singer,:user,:url,:rating)
          {
            "message":"Song was Edited"
          }
        end

      end

      desc "Deleting a Song"
      route_param :id do
        delete "/music" do
          SongLogics::deleteSong(:id)
          {
            "message":"Song was deleted"
           }
        end
      end





      desc 'Testing the API'
      get "music/test" do
        {
            "message":"This api works"
        }
      end
    end
  end
end