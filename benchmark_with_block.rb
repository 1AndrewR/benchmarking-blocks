def benchmark
  start_time = Time.now  # Record the start time
  yield                   # Execute the block
  Time.now - start_time   # Calculate and return the elapsed time
end

 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"