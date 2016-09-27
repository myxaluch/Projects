# Generate Pi with given precision using BBP formula

puts "Generate PI.\nEnter the number of decimal places.(Between 0 and 15)"
places = gets.chomp.to_i
if  places >=0 && places <= 15
  pi = 0.0
  (0..1000).each do |k|
    pi += (16.0**(-k))*(4.0/(8.0*k + 1.0) - 2.0/(8.0*k + 4.0) - 1.0/(8.0*k + 5.0) - 1.0/(8.0*k + 6.0))
  end
  printf("pi = %1.#{places}f", pi)
else
  puts "Abort: enter correct value for places : 0 <= places <= 15"
end
