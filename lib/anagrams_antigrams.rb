require ('pry')
# require ('rspec')

class String
  define_method(:anagrams) do
    input_array = self.downcase().split(",")
    word_one = (input_array[0]).split(" ")
    word_two = (input_array[1]).split(" ")

    word_one_split = word_one.sort()
    word_two_split = word_two.sort()

    input_test = word_one.join(" ") + word_two.join(" ")
    if (word_one & word_two).empty?
      anagram_outcome = "This is not an Anagram. This is an Antigram"
    else
      if input_test.scan(/[aeiou]/).count > 0
        if (word_one_split.join(" ") == word_two_split.join(" "))
          anagram_outcome = "This is an Anagram."

      end


  end
end


p "Please enter two words:"
input = gets.to_str
input.anagrams
