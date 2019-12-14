class Anagrams
  attr_reader(:input_one, :input_two)

  def initialize(input_one, input_two)
    @input_one = input_one
    @input_two = input_two
  end

  def anagram_check
    first_word = @input_one.downcase.gsub(/[^a-z]/, '').chars.sort.join
    second_word = @input_two.downcase.gsub(/[^a-z]/, '').chars.sort.join
    first_antigram_word = @input_one.downcase.gsub(/[^a-z]/, '').chars.sort.push
    second_antigram_word = @input_two.downcase.gsub(/[^a-z]/, '').chars.sort.push
    superset = (first_antigram_word + second_antigram_word)
    subset = superset.uniq
    matches = superset.count - subset.count
    first_word_vowels = first_word.scan(/[aeiouy]/)
    second_word_vowels = second_word.scan(/[aeiouy]/)
    if first_word_vowels.length == 0 || second_word_vowels.length == 0
      outcome = 'Please enter a real word'
    elsif first_word == second_word
      outcome = 'These words are anagrams'
    elsif matches == 0
      outcome = 'These words are not anagrams but are antigrams'
    else
      outcome = 'These words are not anagrams or antigrams'
    end
    outcome
  end

end
