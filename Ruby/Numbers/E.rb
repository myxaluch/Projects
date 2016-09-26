# Generate E with given precision using factorial series


def factorial value
  res = 1.0
  if value == 0
    return res
  else
    (1..value).each do |n|
      res *= n
    end
  end
  return res
end


puts "Generate E.\nEnter the number of decimal places.( Between 0 and 15)"
places = gets.chomp.to_i
if  places >=0 && places <= 15
  e = 0.0
  (0..1000).each do |k|
    e += 1.0 / factorial(k)
  end
  printf("e = %1.#{places}f", e)
else
  puts "Abort: enter correct value for places : 0 <= places <= 15"
end
