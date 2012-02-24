module ApplicationHelper

	#Return a title on a per-page basis.
	def title
	  base_title = "Ruby on Rails Bookmark Project"
	  if @title.nil?
		base_title
	  else
		"#{base_title} | #{@title}"
      end
	end

	def logo
	  image_tag("book_logo.jpg", :alt => "Bookmark logo", :class => "round")    
	end
end
