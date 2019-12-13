class Anagrams
  attr_accessor(:input_one, :input_two)

  def initialize(input_one, input_two)
    @input_one = input_one
    @input_two = input_two
  end

  def anagram_check
    first_word = @input_one.chars.sort.join
    second_word = @input_two.chars.sort.join
  end

end
