# Returns count of digits matching in the two input non-negative integers
# Time Complexity: O(n) where n represents the number of digits in the number with the least digits
# Space Complexity: O(1), count/digit_num_one/digit_num_two is auxiliary storage
def digit_match(number1, number2)
  return 0 if number1 == nil || number2 == nil
  count = 0

  while number1 > 0 && number2 > 0 do
    digit_num_one = number1 % 10
    digit_num_two = number2 % 10

    if digit_num_one == digit_num_two
      count += 1
    end

    number1 /= 10
    number2 /= 10
  end

  return count
end
