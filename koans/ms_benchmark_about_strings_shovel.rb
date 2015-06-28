#!/usr/bin/env ruby

require 'benchmark'

count = 20000
Benchmark.bmbm do |x|
  x.report('+= :') do
    s = ""
    count.times { s += "something " }
  end
  x.report('<< :') do
    s = ""
    count.times { s << "something " }
  end
end
