class Anagram 
    attr_reader :word # reader or accessor works

    def initialize(word)
        @word = word
    end

    def match(array)
        array.select do |array_word|
        array_word.split("").sort == word.split("").sort
        end
    end
end

# %w[enlists google inlets banana] same as: 
# ["enlists", "google", "inlets", "banana"] array we pass in to match
# "enlists".split("").sort
# ["e", "i", "l", "n", "s", "s", "t"] 

# .find wouldnt work bc want to return ALL matches. Find only returns one

# one liner
# def match(array)
#     array.select { |array_word| array_word.split("").sort == @word.split("").sort }
# end

