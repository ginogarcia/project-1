class Bookmark < ActiveRecord::Base
    attr_accessible :url, :name
    
    validates :url,  :presence => true,
                     :length   => {:minimum => 10}
    
    validates :name, :presence => true,
                     :length   => {:maximum => 100}
    

end
  
