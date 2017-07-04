require "./bin/app.rb"
require "test/unit"
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end 

	def test_my_default
		get '/' 
		assert_equal 'Hello Great Big Awesome World', last_response.body
	end

	def test_hello_form
		get '/hello/'
		assert last_response.ok?
		assert last_response.body.include?('A Greeting')
	end

	def test_hello_form_post
		post '/hello/', params={:name => 'Frank', :greeting => "Hi"}
		assert last_response.ok?
		assert last_response.body.include?('I just wanted to say')
	end
end

=begin
This file is simply pretending to be a web browser, and it looks similar to how the Sinatra handlers are, but written as if you were telling a browser to visit your webapplication with code. To run this test do what you normally do:

rake test

C:/Ruby23-x64/bin/ruby.exe -I"lib;tests" -I"C:/Ruby23-x64/lib/ruby/gems/2.3.0/gems/rake-10.4.2/lib" "C:/Ruby23-x64/lib/ruby/gems/2.3.0/gems/rake-10.4.2/lib/rake/rake_test_loader.rb" "tests/test_gothonweb.rb"
Loaded suite C:/Ruby23-x64/lib/ruby/gems/2.3.0/gems/rake-10.4.2/lib/rake/rake_test_loader
Started
...

Finished in 0.252735 seconds.
---------------------------------------------------------------------------
3 tests, 5 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
---------------------------------------------------------------------------
11.87 tests/s, 19.78 assertions/s
=end