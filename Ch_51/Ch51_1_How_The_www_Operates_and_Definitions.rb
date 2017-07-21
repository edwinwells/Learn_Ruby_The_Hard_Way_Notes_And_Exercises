=begin
I've labeled the lines with letters so I can walk you through a regular request process:
You type in the url http://test.com// into your browser, and it sends the request on line (A) to your computer's network interface.
Your request goes out over the internet on line (B) and then to the remote computer on line (C) where my server accepts the request.
Once my computer accepts it, my web application gets it on line (D), and my Ruby code runs the index.GET handler.
The response comes out of my Ruby server when I return it, and it goes back to your browser over line (D) again.
The server running this site takes the response off line (D), then sends it back over the internet on line (C).
The response from the server then comes off the internet on line (B), and your computer's network interface hands it to your browser on line (A).
Finally, your browser then displays the response.

*see test.com, above

In this description there are a few terms you should know so that you have a common vocabulary to work with when talking about your web application:

Browser:
The software that you're probably using every day. Most people don't know what a browser really does. They just call browsers "the internet." Its job is to take addresses (like http://test.com/) you type into the URL bar, then use that information to make requests to the server at that address.

Address:
This is normally a URL (Uniform Resource Locator) like http://test.com// and indicates where a browser should go. The first part, http, indicates the protocol you want to use, in this case "Hyper-Text Transport Protocol." You can also try ftp://ibiblio.org/ to see how "File Transport Protocol" works. The http://test.com/ part is the "hostname," a human readable address you can remember and which maps to a number called an IP address, similar to a telephone number for a computer on the internet. Finally, URLs can have a trailing path like the /book/ part of http://test.com//book/, which indicates a file or some resource on the server to retrieve with a request. There are many other parts, but those are the main ones.

Connection:
Once a browser knows what protocol you want to use (http), what server you want to talk to (http://test.com/), and what resource on that server to get, it must make a connection. The browser simply asks your operating system (OS) to open a "port" to the computer, usually port 80. When it works, the OS hands back to your program something that works like a file, but is actually sending and receiving bytes over the network wires between your computer and the other computer at http://test.com/. This is also the same thing that happens with http://localhost:8080/, but in this case you're telling the browser to connect to your own computer (localhost) and use port 8080 rather than the default of 80. You could also do http://test.com:80/ and get the same result, except you're explicitly saying to use port 80 instead of letting it be that by default.

Request:
Your browser is connected using the address you gave. Now it needs to ask for the resource it wants (or you want) on the remote server. If you gave /book/ at the end of the URL, then you want the file (resource) at /book/, and most servers will use the real file /book/index.html but pretend it doesn't exist. What the browser does to get this resource is send a request to the server. I won't get into exactly how it does this, but just understand that it has to send something to query the server for the request. The interesting thing is that these "resources" don't have to be files. For instance, when the browser in your application asks for something, the server is returning something your Ruby code generated.

Server:
The server is the computer at the end of a browser's connection that knows how to answer your browser's requests for files/resources. Most web servers just send files, and that's actually the majority of traffic. But you're actually building a server in Ruby that knows how to take requests for resources and then return strings that you craft using Ruby. When you do this crafting, you are pretending to be a file to the browser, but really it's just code. As you can see from Exercise 50, it also doesn't take much code to create a response.

Response:
This is the HTML (CSS, JavaScript, or images) your server wants to send back to the browser as the answer to the browser's request. In the case of files, it just reads them off the disk and sends them to the browser, but it wraps the contents of the disk in a special "header" so the browser knows what it's getting. In the case of your application, you're still sending the same thing, including the header, but you generate that data on the fly with your Ruby code.

=end