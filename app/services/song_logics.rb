# def  editSong(id,name,singer,user,url,rating)
#   Song.find(id).update({ name:name, singer:singer,rating:rating, url:url, user:user})
# end
#
# def deleteSong(id)
#   Song.delete(id)
# end
# end
# class SongLogics < MusicAppServices::ApplicationServices
#
# #   Create a new song
# def create(name,singer,user,url,rating)
#   Song.create!({ name:name, singer:singer,rating:rating, url:url, user:user})
# end
#
# #   Getting all songs
# def self.getAll()
#   return Song.all
# end
#
# def getSong(id)
#   Song.find(id)
# end
#


class SongLogics
  class << self #it is a singleton class hence using self for all the functions make sense
    #   Create a new song
    def create(name,singer,user,url,rating)
      user=user.to_i
      user=User.find(user)
      Song.create!({ name:name, singer:singer,rating:rating, url:url, user:user})
    end

    #   Getting all songs
    def getAll()
      return Song.all
    end

    def getSong(id)
      Song.find(id)
    end

    def  editSong(id,name,singer,user,url,rating)
      Song.find(id).update({ name:name, singer:singer,rating:rating, url:url, user:user})
    end

    def deleteSong(id)
      Song.delete(id)
    end
  end
end