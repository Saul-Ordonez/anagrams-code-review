#!/usr/bin/env ruby
require ('./lib/anagrams.rb')

puts "Enter a word:"
@input_one = gets.chomp
puts "Enter another word:"
@input_two = gets.chomp

anagrams = Anagrams.new(@input_one, @input_two)
outcome = anagrams.anagram_check()

if outcome == 'non word'
  puts 'Please enter a real word'
elsif outcome == 'anagram'
  puts 'These words are anagrams'
elsif outcome == 'antigram'
  puts 'These words are not anagrams but are antigrams'
else
  puts 'These words are not anagrams'
end
