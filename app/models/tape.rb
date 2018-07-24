class Tape < ActiveRecord::Base
    belongs_to :user
    belongs_to :music
    
    mount_uploader :image, S3Uploader
    
#    def music_name
#        music.try(:name)
#    end
#    
#    def music_name=(name)
#        self.music = Music.find_by_name(name) if name.persent?
#    end
#    
#    def singer_name
#        music.try(:singer)
#    end
#    
#    def music_singer=(singer)
#        self.music = Music.find_by_singer(singer) if singer.persent?
#    end
end
