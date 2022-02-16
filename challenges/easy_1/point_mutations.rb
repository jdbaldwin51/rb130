
class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other)
    count = 0
    if strand.length < other.length || strand.length == other.length
      strand.chars.each_with_index do |char, idx|
        count += 1 unless char == other.strand[idx]
      end
    else
      other.strand.chars.each_with_index do |char,idx|
        count += 1 unless char == other.strand[idx]
      end
    end
    count
  end

  protected
  attr_reader :strand
  def length
    strand.length
  end
end
