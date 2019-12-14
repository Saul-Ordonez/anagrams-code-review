require('rspec')
require('anagrams')

describe('Anagrams#anagram_check') do

  it('checks if two inputted words are anagrams') do
    anagrams = Anagrams.new('listen','silent')
    expect(anagrams.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted words are not anagrams') do
    anagrams = Anagrams.new('listen','nile')
    expect(anagrams.anagram_check).to(eq('These words are not anagrams or antigrams'))
  end

  it('checks if two inputted words are anagrams with case insensitivity') do
    anagrams = Anagrams.new('Listen','Silent')
    expect(anagrams.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted words are not anagrams with case insensitivity') do
    anagrams = Anagrams.new('Listen','Nile')
    expect(anagrams.anagram_check).to(eq('These words are not anagrams or antigrams'))
  end

  it('checks if two inputted phrases are anagrams') do
    anagrams = Anagrams.new('Astronomer','Moon starer')
    expect(anagrams.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted phrases are not anagrams') do
    anagrams = Anagrams.new('Astronomer','Moon gazer')
    expect(anagrams.anagram_check).to(eq('These words are not anagrams or antigrams'))
  end

  it('checks if two inputted words are anagrams with vowels') do
    anagrams = Anagrams.new('listen','silent')
    expect(anagrams.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted words are not anagrams with vowels') do
    anagrams = Anagrams.new('lstn','slnt')
    expect(anagrams.anagram_check).to(eq('Please enter a real word'))
  end

  it('checks if two inputted words are anagrams with special characters removed') do
    anagrams = Anagrams.new('listen!','*silent')
    expect(anagrams.anagram_check).to(eq('These words are anagrams'))
  end

  it('checks if two inputted words are antigrams') do
    anagrams = Anagrams.new('listen','arrow')
    expect(anagrams.anagram_check).to(eq('These words are not anagrams but are antigrams'))
  end

end
