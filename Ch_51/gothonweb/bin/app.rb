require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
	return 'Hello Great Big Awesome World'
end

get '/hello/' do
	erb :hello_form
end

post '/hello/' do
	greeting = params[:greeting] || "Hey There"
	name = params[:name] || "Nobody"

	erb :index, :locals => {'greeting' => greeting, 'name' => name}
end