#!/usr/bin/env ruby
class Anagrams
  attr_reader(:input_one, :input_two)

  def initialize(input_one, input_two)
    @input_one = input_one
    @input_two = input_two
  end

  def anagram_check
    first_word = @input_one.gsub(/\s+/, '').downcase.chars.sort.join
    second_word = @input_two.gsub(/\s+/, '').downcase.chars.sort.join
    first_word_vowels = first_word.scan(/[aeoui]/)
    second_word_vowels = second_word.scan(/[aeoui]/)
    if first_word_vowels.length == 0 || second_word_vowels.length == 0
      outcome = 'Please enter a real word'
    elsif first_word == second_word
      outcome = 'These words are anagrams'
    else
      outcome = 'These words are not anagrams'
    end
    outcome
  end

end
