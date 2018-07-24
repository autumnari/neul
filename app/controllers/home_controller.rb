require 'nokogiri'
require 'open-uri'
class HomeController < ApplicationController
    def main_page
        @tapes=Tape.all
        
        # url ="http://www.genie.co.kr/genre/M0100" 
        # data = Nokogiri::HTML(open(url)) # 열고
        # @charts = data.css('tbody tr td.info')
        
        # @charts.each do |chart|
        # #각각 돌면서 chart에 추가해줍니다.
        #      tit = chart.css('a.title.ellipsis').text.strip,
        #      cont = chart.css('a.artist').text.strip
        #      @res = Music.new(title: tit, singer: cont)
        #      @res.save
        #  end
        #  redirect_to '/'
    end
    
    def fake_page
        @tapes=Tape.all
    end
    
end
