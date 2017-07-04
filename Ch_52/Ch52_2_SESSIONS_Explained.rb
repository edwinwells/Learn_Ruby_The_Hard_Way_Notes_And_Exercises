=begin
Sessions and Tracking Users
At a certain point in your web application you'll need to keep track of some information and associate it with the user's browser. The web (because of HTTP) is what we like to call "stateless," which means each request you make is independent of any other requests being made. If you request page A, put in some data, and click a link to page B, all the data you sent to page A just disappears.

The solution to this is to create a little data store (usually in a database or on the disk) that uses a number unique to each browser to keep track of what that browser was doing. This is called "session tracking" and uses cookies in the browser to maintain the state of the user through the application. In the little Sinatra framework it's fairly easy by adding this line at the top:

enable :sessions

Put that line where you put your set calls, and then you can use the session like this:
# set a value in the session for later
session[:room] = "central_corridor"

# get the room in another handler with
current_room = session[:room]
This is what we were doing in map.rb with the Map::load_room and Map::store_room to keep track of what room the player is currently in. You could also use this to keep track of choices they've made, if monsters have died, or how much damage the player has sustained.
=end