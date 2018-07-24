class MusicsController < ApplicationController
    def index
        @musics = music.order(:singer).where("name like ?", "%#{params[:term]}")
        render json: @musics.map(&:singer)
    end
end
