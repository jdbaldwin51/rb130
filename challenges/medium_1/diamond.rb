class Diamond
  class << self
    attr_reader :size, :space, :letters, :letter

    def make_diamond(letter)
      return "#{letter}\n" if letter == 'A'

      return " A \nB B\n A \n" if letter == 'B'
      

      @letter = letter
      @letters = ('A'..letter).to_a
      @size = @letters.length * 2 - 1
      @space = ' '
      diamond
    end

    def diamond_array
      outer_space = size - 1
      inner_space = 1
      str_arr = []
      letters[1..-1].each do |char|
        str_arr << [char, char].join((space * inner_space).to_s)
        inner_space += 2
      end
      str_arr
    end

    def diamond
      diamond = "#{top}"
      diamond_array.each {|str| diamond << "\n#{str.center(size,' ')}"}
      diamond_array.reverse[1..-1].each {|str| diamond << "\n#{str.center(size,' ')}"}
      diamond << "\n#{top}\n"
    end

    def top
      'A'.center(size, ' ')
    end
  end
end

# puts Diamond.make_diamond('C')
# puts Diamond.make_diamond('E')
