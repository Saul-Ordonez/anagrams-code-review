class Anagrams
  attr_reader(:input_one, :input_two)

  def initialize(input_one, input_two)
    @input_one = input_one
    @input_two = input_two
  end

  def anagram_check
    first_word = @input_one.downcase.gsub(/[^a-z]/, '').chars.sort.join
    second_word = @input_two.downcase.gsub(/[^a-z]/, '').chars.sort.join
    first_word_vowels = first_word.scan(/[aeiouy]/)
    second_word_vowels = second_word.scan(/[aeiouy]/)
    if first_word_vowels.length == 0 || second_word_vowels.length == 0
      outcome = 'Please enter a real word'
    elsif first_word == second_word
      outcome = 'These words are anagrams'
    else
      outcome = 'These words are not anagrams or antigrams'
    end
    outcome
  end

end
