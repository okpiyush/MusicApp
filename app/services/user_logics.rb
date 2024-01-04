module UserLogics
  class << self
    def create_user(username,email,pasd)
      user=User.new({ name: username, email:email,password:pasd})
      user.save
    end



    def GetUser(email)
      User.find_by(email: email)
    end



  end

end