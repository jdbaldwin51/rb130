class Anagram
  attr_reader :test_str
  def initialize(test_str)
    @test_str = test_str
  end

  def match(array)
    array.select {|word| word.downcase != test_str.downcase && word.downcase.chars.sort == test_str.downcase.chars.sort }
  end

end
