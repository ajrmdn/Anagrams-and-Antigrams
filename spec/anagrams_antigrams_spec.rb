require('rspec')
require('anagrams_antigrams')

describe('#anagrams_antigrams') do
  it("Capitalizes the first letter of all words") do
    expect("i like movies".title_case).to(eq("I Like Movies"))
  end
  describe('#anagrams_antigrams') do
    it("Capitalizes the word") do
      expect("avengers".title_case).to(eq("Avengers"))
    end
  end
end
