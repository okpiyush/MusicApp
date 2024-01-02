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
      end
      post do
        Song.create!({ name:params[:name], singer:params[:singer],rating:params[:rating], url:params[:url]})
        {
          "message":"Song was created"
        }
      end




      desc "Getting all the songs"
      get "" do
        Song.all
      end
      desc " getting a specific song"
      route_param :id do
        get do
          song = Song.find(params[:id])
          present song
        end
      end




      desc "Editing the song"
      params do
        requires :name, type: String
        requires :singer, type: String
        requires :url, type: String
        requires :rating, type: Float
      end
      route_param :id do
        put do
          Song.find(params[:id]).update({ name:params[:name], singer:params[:singer],rating:params[:rating]})
          {
            "message":"Song was Edited"
          }
        end

      end

      desc "Deleting a Song"
      route_param :id do
        delete do
          Song.delete(params[:id])
          {
            "message":"Song was deleted"
          }
        end
      end





      desc 'Testing the API'
      get "test" do
        {
            "message":"This api works"
        }
      end
    end
  end
end