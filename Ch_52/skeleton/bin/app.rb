=begin
There are even more new things in this script, but amazingly it's an entire web-based game engine in a small file. The biggest "hack" in the script are the lines that bring the sessions back, which is needed so that debug mode reloading works. Otherwise, each time you refresh the page the sessions will disappear and the game won't work.
=end

require 'sinatra'
require './lib/gothonweb/map.rb'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"
enable :sessions
set :session_secret, 'BADSECRET'

get '/' do
    session[:room] = 'START'
    redirect to('/game')
end

get '/game' do
    room = Map::load_room(session)

    if room
        erb :show_room, :locals => {:room => room}
    else
        erb :you_died
    end
end


post '/game' do
    room = Map::load_room(session)
    action = params[:action]

    if room
        next_room = room.go(action) || room.go("*")

        if next_room
            Map::save_room(session, next_room)
        end

        redirect to('/game')
    else
        erb :you_died
    end
end