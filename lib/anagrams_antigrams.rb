require ('pry')

class Word
  attr_accessor(:word_one, :word_two)

  def initialize(word_one, word_two)
      @word_one = word_one.downcase.gsub(/[\s+,.?!#@"']/, '').split("").sort
      @word_two = word_two.downcase.gsub(/[\s+,.?!#@"']/, '').split("").sort
  end

  def anagram()
    
    if ((@word_one.length == 0) || (@word_two.length == 0))
      "Please enter both words"
    elsif @word_one == @word_two
      "Thats an anagram!"
    else
      "This is not an anagram."
    end
  end

  def antigram()
    is_antigram = true
    @word_one.each do |letter|
      if ((is_antigram == true) & (@word_two.include?(letter)))
        is_antigram = false
      end
    end
    is_antigram
  end
end
