require ('pry')

class Word
  attr_accessor(:word_one, :word_two)

  def initialize(word_one, word_two)
      @word_one = word_one
      @word_two = word_two
  end

  def anagram(word_one, word_two)
    word_one_array = word_one.downcase.gsub(/[\s+,.?!#@"']/, '').split("").sort
    word_two_array = word_two.downcase.gsub(/[\s+,.?!#@"']/, '').split("").sort

    if ((word_one_array.length === 0) | (word_two_array.length === 0))
      "Please enter both words"
    elsif word_one_array === word_two_array
      "Thats an anagram!"
    else
      "This is not an anagram."
    end
  end

  def antigram(word_one, word_two)
    word_one_array = word_one.downcase.gsub(/[\s+,.?!#@"']/, '').split("")
    word_two_array = word_two.downcase.gsub(/[\s+,.?!#@"']/, '').split("")
    is_antigram = true
    word_one_array.each do |letter|
      if ((is_antigram == true) & (word_two_array.include?(letter)))
        is_antigram = false
      end
    end
    is_antigram
  end

end





# p "Please enter two words:"
# input = gets.chomp
# input.anagrams
