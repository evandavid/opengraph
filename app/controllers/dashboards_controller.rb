class DashboardsController < ApplicationController
  def index
  	if current_facebook_user
  		require 'open-uri'
			require 'json'
  		@friends= JSON.parse(open("https://graph.facebook.com/me/home?access_token="+current_facebook_user.client.access_token).read)
  		@friends = @friends["data"]
  	end 
  end

end
