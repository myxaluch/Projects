module ClassicAlgorithms
  def collatz_conjecture(number)
    res = []
    temp_value = number
    while temp_value != 1
      if (temp_value % 2) == 0
        temp_value /= 2
      else
        temp_value = 3 * temp_value + 1
      end
      res << temp_value
    end
    res
  end

  def bubble_sort(values = [])
    return unless values.any?

    result = values
    (0...result.size).each do |i|
      flag = 0
      (0...result.size-i-1).each do |j|
        result[j], result[j+1] = result[j+1], result[j] if result[j] > result[j+1]
        flag = 1
      end
      break if flag == 0
    end

    result
  end

  def merge_sort(values = [])
    return unless values.any?

    result = values
    (0...result.size).each do |i|
      flag = 0
      (0...result.size-i-1).each do |j|
        result[j], result[j+1] = result[j+1], result[j] if result[j] > result[j+1]
        flag = 1
      end
      break if flag == 0
    end

    result
  end

  module_function
end
