require('rspec')
require('anagrams')

describe('Anagrams#anagram_check') do

  it('checks if two inputted words are anagrams') do
    anagram_correct = Anagrams.new('listen','silent')
    expect(anagram_correct.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted words are not anagrams') do
    not_anagram = Anagrams.new('listen','arrow')
    expect(not_anagram.anagram_check).to(eq('These words are not anagrams'))
  end

  # it('checks if two inputted words are anagrams with case insensitivity') do
  #   first_check = Anagrams.new('listen','silent')
  #   expect(first_check.anagram_check).to(eq('These words are anagrams'))
  # end

end
