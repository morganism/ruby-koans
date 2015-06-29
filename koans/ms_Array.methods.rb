Array.methods.each {|m| puts m}
[].methods.each {|m| puts m}
puts [].class
puts "[] Responds to " + [].respond_to?(:each).to_s
puts "Array Responds to " + Array.respond_to?(:each).to_s
