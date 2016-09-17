# Generate Pi with given precision using Nilakantha series

puts "Generate PI.\nEnter the number of decimal places."
places = gets.chomp.to_i
#first = 2.0 * Math.sqrt(3)
#series = 0.0
pi = 0.0
(0..10).each do |k|
  pi += (16.0**(places-k))*(4.0/(8.0*k + 1.0) - 2.0/(8.0*k + 4.0) - 1.0/(8.0*k + 5.0) - 1.0/(8.0*k + 6.0))
end
puts pi

#pi = first * series
#printf("pi ·- %1.#{places}f\n", pi)
