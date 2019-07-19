require ('rspec')
require ('anagrams_antigrams.rb')

describe('String#anagrams_antigrams') do
  it("tests two words to see if they are anagrams") do
    expect("ruby, bury".anagrams_antigrams()).to(eq("This is an Anagram"))
  end

end
