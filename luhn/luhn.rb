class Luhn

  def self.valid?(number)
    # .inject(0) { |sum, x| sum + x }

    number.gsub!(/\s/, "")
    number.gsub!(/[^0-9]/, "0")

    if number.length < 2
      return false
    end

    if number.length.even?
      number.prepend("0")
    end

    input_digits = number.reverse.split("")
    output_string = ""
    output_digits = []

    input_digits.each_with_index do |digit, index|
      if index.odd?
        if digit.to_i * 2 > 9
          output_digits << ((digit.to_i * 2) - 9)
        else
          output_digits << (digit.to_i * 2)
        end
      else
        output_digits << digit.to_i
      end
    end

    sum_of_digits = output_digits.inject(0){|sum,x| sum + x }

    if sum_of_digits % 10 == 0
      true
    else
      false
    end

  end



end