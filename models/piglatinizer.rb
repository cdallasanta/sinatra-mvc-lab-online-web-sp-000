class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(text)
    binding.pry
    words = text.split(" ")
    words.each do |word|
      start_consonants = word.scan(/^[^aeiou]*/i)[0]
      word.split(start_consonants)[1]
  end
end
