class RomanNumeral
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def to_roman
    numerals_hash = {1000 => 'M',900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L',40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}
    numerals_keys = numerals_hash.keys
    temp_num = number
    numbers_array = []

    numerals_keys.each do |num|
      next if temp_num < num
      loop do
        temp_num -= num
        numbers_array << num
        break if temp_num < num
      end
    end
    numbers_array.map {|n| numerals_hash[n]}.join
  end
end
