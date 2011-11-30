class NewsController < ApplicationController
	require 'net/http'


  def index
  	
  end
  
  def search
  	keywords = params[:search][:keyword]
  	keywords = keywords.split(' ')
  	keyword = ''
  	keywords.each do |k|
  		keyword = keyword+"%20"+k
  	end
  	uri = URI.parse("http://ajax.googleapis.com/ajax/services/search/news?v=1.0&hl=id&q="+keyword)
		http = Net::HTTP.new(uri.host, uri.port)
		request = Net::HTTP::Get.new(uri.request_uri)
		response = http.request(request)
		parsed_json = ActiveSupport::JSON.decode(response.body)
		@news = parsed_json["responseData"]["results"]
  end
  
  def create
  
  end

end
