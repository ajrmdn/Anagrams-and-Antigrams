require('rspec')
require('anagrams_antigrams')

describe('#anagrams_antigrams') do
  it("Compares two words to see if they are anagrams") do
    expect("ruby, bury".anagrams_antigrams).to(eq("This is an Anagram"))
  end
  # describe('#anagrams_antigrams') do
  #   it("Capitalizes the word") do
  #     expect("avengers".title_case).to(eq("Avengers"))
  #   end
  # end
end
