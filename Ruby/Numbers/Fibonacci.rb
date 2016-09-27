# Enter a number and have the program generate the Fibonacci sequence to that number or to the Nth number using the Binet formul


puts "Generate Fibonacci sequence.\nEnter the n of Fn"
number = gets.chomp.to_i

if number < 0 
    puts "Enter correct value of n"
else
    sqr_five = Math.sqrt(5)
    (0..number).each do |n|
        f = (((1.0 + sqr_five)/2.0)**n - ((1.0 - sqr_five)/2.0)**n) / sqr_five
        printf("F%d = %1.f ", n, f)
    end
end



