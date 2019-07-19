require ('rspec')
require ('anagrams_antigrams.rb')

describe('String#anagrams') do
  it("tests two words to see if they are anagrams") do
    expect("ruby, bury".anagrams()).to(eq("This is an Anagram"))
  end

end
