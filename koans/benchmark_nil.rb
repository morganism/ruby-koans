require 'benchmark'

n = 1000000
Benchmark.bm do |x|
	puts "1.nil?"
  x.report { n.times do ; 1.nil?;   end }
	puts "1 == nil"
  x.report { n.times do ; 1 == nil; end }
end
