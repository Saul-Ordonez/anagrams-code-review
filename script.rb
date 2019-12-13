#!/usr/bin/env ruby
require ('./lib/anagrams.rb')

puts "Enter a word:"
@input_one = gets.chomp
puts "Enter another word:"
@input_two = gets.chomp

anagrams = Anagrams.new(@input_one, @input_two)
outcome = anagrams.anagram_check()

if outcome == 'Please enter a real word'
  puts 'Please enter a real word'
elsif outcome == 'These words are anagrams'
  puts 'These words are anagrams'
else
  puts 'These words are not anagrams'
end
