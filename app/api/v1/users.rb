
module MusicStore
  module V1
    class Users < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api

      #creating a user
      desc "Creating a user"
      params do
        requires :name, type: String
        requires :email, type: String
        requires :password, type: String
      end
      post "/user" do
        UserLogics.create_user(params[:name],params[:email],params[:password])
      end

      get "/user" do
        User.all
      end

      # Deleting a user
      delete "/user" do

      end


      # updating a user
      put "/user" do

      end


      # testing a user
      get "user/test" do
        {
          "message":"user working"
        }
      end
    end
  end
end
