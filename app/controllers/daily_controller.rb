class DailyController < ApplicationController
     #create
    def new
        @token = form_authenticity_token
        @userID = current_user.id
        @musics = Music.all
        
        @musictitles = Array.new()
        @musics.each do |music|
          @musictitles.push music.title
        end
        
        @musicsingers = Array.new()
        @musics.each do |music|
          @musicsingers.push music.singer
        end

    end
    
    def create
        daily = Daily.new
        
        daily.user_id = params[:userID]
        daily.title = params[:title]
        daily.music = params[:music]
        daily.singer = params[:singer]
        daily.content = params[:content]
        
        daily.save
        redirect_to "/my_page/index"
        
    end

    #Read
    def index
        @dailies = Daily.all.order('created_at desc') 
        @users = User.all
    end

    def show
        @token = form_authenticity_token
        @daily = Daily.find params[:id]
    end
    
    #Update
    def edit
        @daily = Daily.find params[:id]
        @token = form_authenticity_token
    end
    

    def update
        daily = Daily.find params[:id]
        
        daily.title = params[:title]
        daily.music = params[:music]
        daily.singer = params[:singer]
        daily.content = params[:content]
        
        daily.save
        redirect_to "/my_page/index"
    end
    
    #Destroy
    def destroy
        @daily = Daily.find params[:id]
        @daily.destroy
        
        redirect_to "/my_page/index"
    end

end
