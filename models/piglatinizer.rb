class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(text)
    binding.pry
    words = text.split(" ")
    words.map do |word|
      start_consonants = word.scan(/^[^aeiou]*/i)[0]
      mid-word = word.split(start_consonants)[1]

      word = mid-word + start_consonants + "ay"
  end
end
