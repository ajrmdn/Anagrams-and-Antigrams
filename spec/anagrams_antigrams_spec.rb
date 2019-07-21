require ('rspec')
require ('anagrams_antigrams')

describe('#anagrams') do
  word = Word.new("ruby", "bury")

  it('tests whether a word regardless of capitalization was entered or not') do
    expect(word.anagram("ruby", "")).to(eq("Please enter both words"))
  end

  it('tests two words regardless of capitalization to see if they are anagrams') do
    expect(word.anagram("ruby", "bury")).to(eq("Thats an anagram!"))
  end

  it('tests two words regardless of capitalization to see if they arent anagrams') do
    expect(word.anagram("ruby", "dig")).to(eq("This is not an anagram."))
  end

  it('tests two words regardless of capitalization to see if they are antigram') do
    expect(word.antigram("taco", "fish")).to(eq(true))
  end

  it('tests two words regardless of capitalization to see if they are not an antigram') do
    expect(word.antigram("dish", "fish")).to(eq(false))
  end

  it('tests multiple words regardless of capitalization to see if they are an anagram') do
    expect(word.anagram("Ronald Reagan", "a darn long era")).to(eq("Thats an anagram!"))
  end

  it('tests multiple words regardless of capitalization to see if they are an antigram') do
    expect(word.antigram("Ronald Reagan", "kit")).to(eq(true))
  end




end
