class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(text)
    binding.pry
    words = text.split(" ")
    words.map do |word|
      if !"aeiou".include?(word[0])
        start_consonants = word.scan(/^[^aeiou]*/i)[0]
        mid_word = word.split(start_consonants)[1]
        word = mid_word + start_consonants + "ay"
      else
        word += "ay"
      end
    end
    words.join(' ')
  end
end
