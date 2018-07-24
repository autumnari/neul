class TapesController < ApplicationController
 #CREATE
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
   
    tape = Tape.new
    
    tape.image = params[:img_input]
    
    tape.user_id = params[:user_id]
    tape.title = params[:input_title]
    
    tape.m1_title = params[:music1]
    tape.m1_singer = params[:singer1]
    
    tape.m2_title = params[:music2]
    tape.m2_singer = params[:singer2]
    
    tape.m3_title = params[:music3]
    tape.m3_singer = params[:singer3]
    
    tape.m4_title = params[:music4]
    tape.m4_singer = params[:singer4]
    
    tape.m5_title = params[:music5]
    tape.m5_singer = params[:singer5]
    
    tape.m6_title = params[:music6]
    tape.m6_singer = params[:singer6]
    
    tape.m7_title = params[:music7]
    tape.m7_singer = params[:singer7]
    
    tape.m8_title = params[:music8]
    tape.m8_singer = params[:singer8]
    
    tape.m9_title = params[:music9]
    tape.m9_singer = params[:singer9]
    
    tape.m10_title = params[:music10]
    tape.m10_singer = params[:singer10]
    
    tape.save
    redirect_to "/my_page/index"
    # TODO:뮤직과 싱어를 더 추가 해야 해욤.
  end
  
  #READ
  
  def index
    @tapes = Tape.all
  end
  
  def show
    @tape = Tape.find params[:id]
    @token = form_authenticity_token
  end
  
  # UPDATE
  def edit
    @tape =Tape.find params[:id]
    @token = form_authenticity_token
    
  end
  
  def update
    tape = Tape.find params[:id]
    
    tape.title = params[:input_title]
    tape.m1_title = params[:music1]
    tape.m1_singer = params[:singer1]
    tape.m2_title = params[:music2]
    tape.m2_singer = params[:singer2]
    tape.m3_title = params[:music3]
    tape.m3_singer = params[:singer3]
    tape.m4_title = params[:music4]
    tape.m4_singer = params[:singer4]
    tape.m5_title = params[:music5]
    tape.m5_singer = params[:singer5]
    tape.m6_title = params[:music6]
    tape.m6_singer = params[:singer6]
    tape.m7_title = params[:music7]
    tape.m7_singer = params[:singer7]
    tape.m8_title = params[:music8]
    tape.m8_singer = params[:singer8]
    tape.m9_title = params[:music9]
    tape.m9_singer = params[:singer9]
    tape.m10_title = params[:music10]
    tape.m10_singer = params[:singer10]
    tape.save
    redirect_to "/my_page/index"
  end
  # DESTROY
  
  def destroy
    @tape = Tape.find params[:id]
    @tape.destroy
    
    redirect_to '/my_page/index' 
    #액션의 끝은 어디론가 가야함.
    
  end
  

end
