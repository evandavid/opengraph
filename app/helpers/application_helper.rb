module ApplicationHelper

	def dash
		if current_facebook_user
			require 'open-uri'
			require 'json'
  		@me= JSON.parse(open("https://graph.facebook.com/"+current_facebook_user.id).read)
		end
		return @me
	end

end
