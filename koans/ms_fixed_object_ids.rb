puts "print object_id for : nil, true, false\n"
[nil,true,false].each { |o| print o.object_id, ' '}

puts "\nprint object_id for small integers [integer:id]\n"
(0..50).each { |i| print i,":",i.object_id, ' ' }
puts "\n"
