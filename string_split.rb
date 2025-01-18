class StringSplit
  EXCEPTION_MESSAGE = "negative numbers not allowed"

  # Define a custom exception class
  class NegativeNumberError < StandardError
    def initialize(msg = "Negative numbers are not allowed.")
      super(msg)
    end
  end

  def handle_exception(nums, negative_num)
    nums.append(negative_num)
  end

  def print_exception(negative_nums)
    print EXCEPTION_MESSAGE + negative_nums.to_s
  end

  def replace_string(string_num)
    return result = string_num.gsub(/[,\n;]/, ' ')
  end

  # string_numbers(string) - String of numbers
  # returns sum of the numbers
  def add_numbers(string_numbers)
      return 0 if string_numbers.length == 0
      negative_nums = []
      cleaned_text = replace_string(string_numbers)
      split_text = cleaned_text.split(" ")
      result_number = 0
        split_text.each do |current_number|
          begin
            if current_number.to_i < 0
              raise NegativeNumberError, "Negative number encountered: #{current_number}"
            end
            result_number += current_number.to_i
          rescue NegativeNumberError
            handle_exception(negative_nums, current_number)
          end
        end
      print_exception(negative_nums) if negative_nums.length > 1
      result_number
  end
end