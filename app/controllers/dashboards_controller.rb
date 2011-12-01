class DashboardsController < ApplicationController
  def index
  	if current_facebook_user
  		@friends=current_facebook_user.friends
  	end
  end

end
