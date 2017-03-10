class Say

  ONES = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four",
    5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }

  TEENS = { 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen",
    14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
    18 => "eighteen", 19 => "nineteen" }

  TENS = { 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty",
    60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety" }

  def initialize(number)
    @number = number
  end

  def in_english
    if @number < 10
      ONES[@number]
    elsif @number < 20
      TEENS[@number]
    else
      TENS[@number]
    end
  end

end