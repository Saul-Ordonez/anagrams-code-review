require('rspec')
require('anagrams')

describe('Anagrams#anagram_check') do

  it('checks if two inputted words are anagrams') do
    anagrams = Anagrams.new('listen','silent')
    expect(anagrams.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted words are not anagrams') do
    anagrams = Anagrams.new('listen','arrow')
    expect(anagrams.anagram_check).to(eq('These words are not anagrams'))
  end

  it('checks if two inputted words are anagrams with case insensitivity') do
    anagrams = Anagrams.new('Listen','Silent')
    expect(anagrams.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted words are not anagrams with case insensitivity') do
    anagrams = Anagrams.new('Listen','Arrow')
    expect(anagrams.anagram_check).to(eq('These words are not anagrams'))
  end

  it('checks if two inputted phrases are anagrams') do
    anagrams = Anagrams.new('Astronomer','Moon starer')
    expect(anagrams.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted phrases are not anagrams') do
    anagrams = Anagrams.new('Astronomer','Moon gazer')
    expect(anagrams.anagram_check).to(eq('These words are not anagrams'))
  end

  it('checks if two inputted phrases are anagrams with vowels') do
    anagrams = Anagrams.new('listen','silent')
    expect(anagrams.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted phrases are not anagrams with vowels') do
    anagrams = Anagrams.new('lstn','slnt')
    expect(anagrams.anagram_check).to(eq('These words are not anagrams'))
  end

end
