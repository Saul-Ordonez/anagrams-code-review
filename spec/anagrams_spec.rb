require('rspec')
require('anagrams')

describe('Anagrams#anagram_check') do

  it('checks if two inputted words are anagrams') do
    first_check = Anagrams.new('listen','silent')
    expect(first_check.anagram_check).to(eq('These words are anagrams'))
  end
  
end
