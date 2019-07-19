require ('rspec')
require ('anagrams_antigrams.rb')

describe('String#anagrams_antigrams') do
  it("tests two words to see if they are anagrams") do
    expect(("ruby").anagrams_antigrams("bury")).to(eq("This is an Anagram"))
  end

end
