=begin
*** See Ch51's views/hello_form.rb

A form then consists of the following:

The <form> tag starts it off and says where to deliver this form. In this case it's to action="/hello/" which is our post '/hello/' handler, and method="POST" which tells the browser to use this mechanism.

Text like you might put in another HTML tag, but also...

<input> tags give the type of input fields we want, and the parameters to use. In this case we have two, one with name="greeting" for our params[:greeting] parameters, and name="name" for our params[:name] parameter.
These parameters are then mapped in our post '/hello/' code to create the greeting and name variables which get passed as :locals to the erb :index call.
Finally, the file views/index.erb gets these variables and it prints them.
=end