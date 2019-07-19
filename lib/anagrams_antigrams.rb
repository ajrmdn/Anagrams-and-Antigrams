require ('pry')

class String
  def anagrams_antigrams
    split_sentence = self.split
    split_sentence.each do |word|
      word.capitalize!()
    end
    puts split_sentence.join(" ")
    split_sentence.join(" ")
  end
end


puts "Please enter a Movie:"
input = gets.to_str
input.title_case
