=begin
In all Ruby projects you do not cd into a lower directory to run things. You stay at the top and run everything from there so that all of the system can access all the modules and files.

Finally, use your web browser and go to http://localhost:8080/ and you should see two things. First, in your browser you'll see Hello, world!.


Second, you'll see your Terminal with new output like this:
::1 - - [03/Jul/2014 16:07:10] "GET / HTTP/1.1" 200 11 0.0136
localhost - - [03/Jul/2014:16:07:10 PDT] "GET / HTTP/1.1" 200 11
- -> /

Those are log messages that Sinatra prints out so you can see that the server is working, and what the browser is doing behind the scenes. The log messages help you debug and figure out when you have problems.

=end