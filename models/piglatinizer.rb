class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(text)
    binding.pry
    words = text.split(" ")
    words.each do |word|
      start_consonants[0] = word.scan(/^[^aeiou]*/i)
      word.split(start_consonants)
  end
end
