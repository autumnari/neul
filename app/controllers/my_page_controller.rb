class MyPageController < ApplicationController

def index
    @dailies = Daily.all
    @tapes = Tape.all
    @musics = Music.all
    @likes = Like.all
    @users = User.all
end


end
