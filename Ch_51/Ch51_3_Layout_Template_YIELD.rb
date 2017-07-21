=begin
      ***Creating a Layout Template***
As programmers we have to find common patterns and try to automate them away. One common pattern is the HTML that is at the beginning and the end of each of our .erb files. You shouldn't have to type that every single time you want to create a new view, and you should be able to change that content in one place to change all the pages. The solution to this is a concept called a "layout template", which we'll create in views/layout.erb:

cf. views/layout.erb

This simply takes the common HTML at the top and bottom of every template and puts it into one file. 

***The code <%= yield %> is a Ruby thing that says to stop there and run the other view then come back.*** 

By putting this into views/layout.erb we're telling Sinatra to "wrap" all of our templates with this HTML.
=end