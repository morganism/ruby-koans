array = [:peanut, :butter, :and, :jelly]

s = array.size

array.each_index { |i| print i, "--" }
puts ""
(0..7).each { |i| x = [] == array[i,0] 
	y = nil == array[i,0]
	puts "#{s} : #{i} : empty : #{x}"
	puts "#{s} : #{i} : nil : #{y}"
	if 	i<s
		puts array.fetch(i)
	else
		puts "OOB"
	end
}


exit
#ms: array slices return Array
assert_equal [:peanut], array[0,1]
assert_equal [:peanut, :butter], array[0,2]
assert_equal [:and, :jelly], array[2,2]
assert_equal [:and, :jelly], array[2,20]
assert_equal [], array[4,0]
assert_equal [], array[4,100]
#ms: QQQ why does array[4,0] == [] and  array[5,0] == nil ??? both are out of bounds
#ms: this is important ! @TODO : find out why
ssert_equal nil, array[5,0]
