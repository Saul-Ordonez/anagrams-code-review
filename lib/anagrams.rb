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
    antigram_check = !@input_one.downcase.gsub(/[^a-z]/, '').chars.any? { |chars| @input_two.downcase.gsub(/[^a-z]/, '').chars.include? chars }
    if first_word_vowels.length == 0 || second_word_vowels.length == 0
      outcome = 'non word'
    elsif first_word == second_word
      outcome = 'anagram'
    elsif antigram_check == true
      outcome = 'antigram'
    else
      outcome = 'none'
    end
    outcome
  end
end
