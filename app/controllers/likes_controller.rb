class LikesController < ApplicationController
    
    def create
        @music = Music.find_by(title: params[:music_name], singer: params[:music_singer])
        @like = Like.new(user_id: current_user.id, music_id: @music.id)
        @like.save

        redirect_to :back
    end
    
    def destroy
    end
end
