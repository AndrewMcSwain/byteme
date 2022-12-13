
require 'benchmark/memory'

Benchmark.memory do |x| 
  x.report("strings") do |x|
    100_000.times { "string" }
  end

  x.report("symbols") do
    100_000.times { :symbol }
  end
  
#  x.report("integer") do
#    100_000.times { 100 }
#   end

  x.compare!

end
