=begin

>> Integer("hell")
ArgumentError: invalid value for Integer(): "hell"
     from (irb):1:in `Integer'
     from (irb):1
     from /usr/bin/irb:12:in `<main>'

That ArgumentError is an exception that the Integer() function threw because what you handed Integer() is not a number. The Integer()) function could have returned a value to tell you it had an error, but since it only returns integers, it'd have a hard time doing that. It can't return -1 since that's a number. Instead of trying to figure out what to return when there's an error, the Integer() function raises the ArgumentError exception and you deal with it.

You deal with an exception by using the begin and rescue keywords:
=end

def convert_number(object)
  begin
    return Integer(object)
  rescue
    return nil
  end
end

=begin
You put the code you want to "try" inside the begin block, and then you put the code to run for the error inside the rescue. In this case, we want to "try" to call Integer() on something that might be a number. If that has an error, then we "catch" it and return nil.
=end