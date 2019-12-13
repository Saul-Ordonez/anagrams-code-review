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

  it('checks if two inputted words are anagrams with case insensitivity') do
    case_check = Anagrams.new('Listen','Silent')
    expect(case_check.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted words are not anagrams with case insensitivity') do
    case_check = Anagrams.new('Listen','Arrow')
    expect(case_check.anagram_check).to(eq('These words are not anagrams'))
  end

  it('checks if two inputted phrases are anagrams') do
    case_check = Anagrams.new('Astronomer','Moon starer')
    expect(case_check.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted phrases are not anagrams') do
    case_check = Anagrams.new('Astronomer','Moon gazer')
    expect(case_check.anagram_check).to(eq('These words are not anagrams'))
  end

end
