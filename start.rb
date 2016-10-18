## Enter point to program "Karan's Project"
require_relative 'Ruby/Main' # Main file for include all modules


begin
  loop do
    puts "Choose the algo:"
    puts "(1) - Pi algorithm\n(2) - E  algorithm\n(3) - Fibonacci\n(0) - EXIT"
    choice = gets.chomp.to_i
    case choice
    when 1
      puts "Enter the correct value of Pi accuracy ( 0 < .. < 15 places)"
      places = gets.chomp.to_i
      printf("pi = %1.#{places}f\n", pi(places) )
    when 2
      puts "Enter the correct value of E accuracy ( 0 < .. < 15 places)"
      places = gets.chomp.to_i
      printf("e = %1.#{places}f\n", e(places) )
    when 3
      puts "Enter correct value of n ( > 0 )"
      n = gets.chomp.to_i
      res = fibonacci n
      (0...res.length).each do |val|
        printf("F%d = %1.f ", val, res[val])
      end
      printf("\n")
    when 0
      break
    end
  end
rescue ArgumentError
  puts "Invalid argument, check the input!"
  retry
end
