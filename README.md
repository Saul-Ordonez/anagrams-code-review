# Week 8 Project (Anagrams)

#### Application compares two words to check if they are anagrams.

#### By **Saul Ordonez**

## Description

This terminal application takes in 2 words or phrases as user input, and compares them through an anagram algorithm to check if they are indeed anagrams. If so, the user is given a response that they are anagrams. If not, the user is given a response that the words are not anagrams.

## Specs

Behavior | Input | Output
--- | --- | ---
**It will check if two words are anagrams** | User enters 'listen' and 'silent' | 'These are anagrams!'
**If using any uppercase, it will take that into account** | User enters 'Listen' and 'Silent' | 'Those are anagrams!'
**It will check if real words are being used with a rule that must include vowels** | User enters 'ghryt' and 'tryhg'| 'Please enter real words'
**It checks if the word is NOT an anagram to see if it is an antigram** | User enters 'phone' and 'grab' | 'Those are not anagrams but antigrams'
**Will check for phrases that are anagrams or antigrams** | User enters 'phrase' and 'phrase' | 'Those are anagrams!'

## Setup/Installation Requirements

* Clone GitHub project repository onto desktop
* You will need to have ruby installed on your computer
* Run bundle in your terminal to install appropriate Ruby Gems
* Type $ **chmod x+ script.rb** to gain permission to run the application
* Run the script file in terminal by typing in $ **ruby script.rb**

* internet service required when cloning project repository onto local computer.

## Known Bugs

There are no known bugs at this time but may be subject to change.

## Support and contact details

If there are any issues or bugs the developer may not be aware of please contact at:

#### * sauleordonez@gmail.com
#### * (503)-382-9034

## Technologies Used

* Ruby
* Ruby Gem 'nokogiri'
* Ruby Gem 'rack', '~> 2.0.1'
* Ruby Gem 'rspec'
* Ruby Gem 'pry'
* Mac Terminal to run project

### License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Copyright (c) 2019 **_Saul Ordonez_**
