module Numbers

  ## Generate Pi with given precision using BBP formula
  def pi(places)
    if  places >=0 && places <= 15
      pi = 0.0
      (0..1000).each do |k|
        pi += (16.0**(-k))*(4.0/(8.0*k + 1.0) - 2.0/(8.0*k + 4.0) - 1.0/(8.0*k + 5.0) - 1.0/(8.0*k + 6.0))
      end
    else
      raise ArgumentError, "Abort: enter correct value for places : 0 <= places <= 15"
    end
    pi
  end

  ## Generate factorial of value
  def factorial(value)
    res = 1.0
    if value == 0
      return res
    else
      (1..value).each do |n|
        res *= n
      end
    end
    res
  end

  ## Generate E with given precision using factorial series
  def e(places)
    if  places >=0 && places <= 15
      e = 0.0
      (0..1000).each do |k|
        e += 1.0 / factorial(k)
      end
    else
      raise ArgumentError, "Abort: enter correct value for places : 0 <= places <= 15"
    end
    e
  end

  ## Enter a number and have the program
  ## generate the Fibonacci sequence to that number or
  ## to the Nth number using the Binet formul
  def fibonacci(number)
    if number < 0
      raise ArgumentError, "Enter correct value of n > 0"
    else
      res = []
      sqr_five = Math.sqrt(5)
      (0..number).each do |n|
        f = (((1.0 + sqr_five)/2.0)**n - ((1.0 - sqr_five)/2.0)**n) / sqr_five
        res[n] = f.to_i
      end
    end
    res
  end


  def prime_factor(number)
    res = []
    temp_value = number
    while temp_value != 1
      if ( temp_value % 2 == 0 )
        res.push(2)
        temp_value /= 2
        next
      end
      if ( temp_value % 3 == 0 )
        res.push(3)
        temp_value /= 3
        next
      end
      ( 2..(number / 2).floor ).each do |x|
        tmp = (2 * x - 1)
        if (temp_value % tmp == 0)
          res.push(tmp)
          temp_value /= tmp
          break
        end
        tmp = (2 * x + 1)
        if (temp_value % tmp == 0)
          res.push(tmp)
          temp_value /= tmp
          break
        end
      end
    end
    res
  end

  def next_prime(number)
    prime_numbers = []
    (1..number).each do |x|
      result = prime_factor(x)
      if result.first == x
        prime_numbers << x
      else
        next
      end
    end
    prime_numbers
  end

  module_function
end
