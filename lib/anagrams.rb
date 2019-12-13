class Anagrams
  attr_reader(:input_one, :input_two)

  def initialize(input_one, input_two)
    @input_one = input_one
    @input_two = input_two
  end

  def anagram_check
    first_word = @input_one.gsub(/\s+/, '').downcase.chars.sort.join
    second_word = @input_two.gsub(/\s+/, '').downcase.chars.sort.join
    first_vowels = first_word.scan(/[aeoui]/)
    second_vowels = second_word.scan(/[aeoui]/)
    if first_word == second_word && first_vowels.length > 0 && second_vowels.length > 0
      outcome = 'These words are anagrams'
    else
      outcome = 'These words are not anagrams'
    end
  end

end
