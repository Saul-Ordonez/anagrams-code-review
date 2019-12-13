class Anagrams
  attr_reader(:input_one, :input_two)

  def initialize(input_one, input_two)
    @input_one = input_one
    @input_two = input_two
  end

  def anagram_check
    first_word = @input_one.downcase.chars.sort.join
    second_word = @input_two.downcase.chars.sort.join
    if first_word == second_word
      outcome = 'These words are anagrams'
    else
      outcome = 'These words are not anagrams'
    end
    outcome
  end

end
