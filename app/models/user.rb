class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :likes
  has_many :liked_musics, through: :likes, source: :music
  has_many :tapes
  has_many :dailies
  
  def is_like?(daily)
    music = Music.find(params[:daily.music])
    Like.find_by(user_id: self.id, music_id: music.id)
  end
end
