class DashboardsController < ApplicationController
  def index
  	unless current_facebook_user.nil?
  		@friends=current_facebook_user.friends
  	end
  end

end
