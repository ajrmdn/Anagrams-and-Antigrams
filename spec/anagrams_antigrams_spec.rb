require ('rspec')
require ('anagrams_antigrams')

describe('#anagrams') do

  it('tests whether a word regardless of capitalization was entered or not') do
    word = Word.new("ruby", "")
    expect(word.anagram()).to(eq("Please enter both words"))
  end

  it('tests two words regardless of capitalization to see if they are anagrams') do
    word = Word.new("ruby", "bury")
    expect(word.anagram()).to(eq("Thats an anagram!"))
  end

  it('tests two words regardless of capitalization to see if they arent anagrams') do
    word = Word.new("ruby", "dig")
    expect(word.anagram()).to(eq("This is not an anagram."))
  end

  it('tests two words regardless of capitalization to see if they are antigram') do
    word = Word.new("taco", "fish")
    expect(word.antigram()).to(eq(true))
  end

  it('tests two words regardless of capitalization to see if they are not an antigram') do
    word = Word.new("dish", "fish")
    expect(word.antigram()).to(eq(false))
  end

  it('tests multiple words regardless of capitalization to see if they are an anagram') do
    word = Word.new("Ronald Reagan", "a darn long era")
    expect(word.anagram()).to(eq("Thats an anagram!"))
  end

  it('tests multiple words regardless of capitalization to see if they are an antigram') do
    word = Word.new("Ronald Reagan", "kit")
    expect(word.antigram()).to(eq(true))
  end
end
