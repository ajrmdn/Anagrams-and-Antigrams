require ('pry')

class String
  def anagrams_antigrams do
    input_array = self.downcase().split(",")


    end
    # puts split_sentence.join(" ")
    split_sentence.join(" ")
  end
end


puts "Please enter two words:"
input = gets.to_str
input.anagrams_antigrams
