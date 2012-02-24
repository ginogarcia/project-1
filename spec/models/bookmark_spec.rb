require 'spec_helper'

describe Bookmark do
    render_views

    before(:each)do
       @attr = {:url => "http://gino-sample-app.heroku.com", :name => "Gino Garcia"}
    end

    it "should create a new instance given a valid attribute" do
        Bookmark.create!(@attr)
    end

    it "should require an url" do
        no_url_bookmark = Bookmark.new(@attr.merge(:url =>""))
        no_url_bookmark.should_not be_valid
    end

    it "should require a name" do
        no_name_bookmark = Bookmark.new(@attr.merge(:url => ""))
        no_name_bookmark.should_not be_valid
    end

    it "should reject names that are too long" do
        long_name = "a" * 101
        long_name_bookmark = Bookmark.new(@attr.merge(:name => long_name))
        long_name_bookmark.should_not be_valid
    end

    it "should reject url's that are to short" do
        short_url = "a" * 9
        short_url_bookmark = Bookmark.new(@attr.merge(:url => short_url))
        short_url_bookmark.should_not be_valid
    end
end
