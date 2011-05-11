require 'sinatra/base'
require 'haml'
require 'thin'

class Fortune < Sinatra::Base
	get '/fortune/random/?' do
		@fortune = $fortunes[rand($fortunes.size)]
		haml :fortune
	end
	
	get '/fortune/get/:fid' do
		@index = params[:fid].to_i
		@fortune = $fortunes[@index]
		haml :fortune
	end
end
require 'fortunedata'