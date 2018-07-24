class Music < ActiveRecord::Base
    
    has_many :likes, dependent: :destroy
end
