require "set"

class WordChainer
  ALPHABET = ("a".."z")

  def initialize(dictionary_file_name)
    words = File.readlines("dictionary.txt").map(&:chomp)
    @dictionary = Set.new(words)
  end

  def adjacent_words(word)
    all_words = ""
    word.each_char_with_index do |char_1, idx_1|
      ALPHABET.each_char_with_index do |char_2, idx_2|
        new_word = char_2 + word(idx_1 + 1..-1))  
        if dictionary.include?(new_word) && new_word.length == word.length 
          all_words += new_word
        end
      end
    end
    all_words
  end
end

p adjacent_words("cat")