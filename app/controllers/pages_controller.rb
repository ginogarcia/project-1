class PagesController < ApplicationController

    def home
        @title = "Bookmarks Project Home Page"
    end
    
    def new
        @title = "New Bookmark"
    end
end
