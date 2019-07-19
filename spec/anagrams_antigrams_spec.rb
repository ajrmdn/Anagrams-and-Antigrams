require ('rspec')
require ('anagrams_antigrams.rb')

describe('String#anagrams') do
  it('tests two words to see if they are anagrams') do
    expect("ruby, bury".anagrams()).to(eq("This is an Anagram"))
  end
  it('tests two words to see if they are anagrams') do
  expect("ruby, bry".anagrams()).to(eq("This is not an Anagram"))
end

end
