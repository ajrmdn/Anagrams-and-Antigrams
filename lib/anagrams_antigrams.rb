require ('pry')
require ('rspec')

class String
  define_method(:anagrams) do
    input_array = self.downcase().split(",")
    # word_one = (word_array[0]).split("")
    # word_two = (word_array[1]).split("")
    #
    # word_one_checked = word_one.sort()
    # word_two_checked = word_two.sort()


    end
end


puts "Please enter two words:"
input = gets.to_str
input.anagrams
