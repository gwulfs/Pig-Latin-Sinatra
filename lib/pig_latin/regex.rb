require 'pry-debugger'

class PigLatin::Regex
  def translate(words)
    pig_latin_words_array = []
    words = words.split
    words.each do |word|
      consonants_at_beginning_of_word = start_of_word(word).to_s
      if /\y/.match(word)
        if /[^aeiou]/.match(word)
          word =
          pig_latin_words_array << word
        end
      elsif consonants_at_beginning_of_word # checks if word begins with consonant
        i = 0
        word.each do |letter|
          if i + consonants_at_beginning_of_word.length < word.length
            letter = word[i+consonants_at_beginning_of_word.length]
          elsif i == word.length
            letter << consonants_at_beginning_of_word
            word # break pt
          end
          i += 1
        end
        pig_latin_words_array << word
      else
        word = word + 'way'
        pig_latin_words_array << word
      end
    end
    pig_latin_words_array
  end

  def consonants_at_beginning_of_word(word)
    /\A[^aeiou]*/.match(word)
  end
  def consonant_translator

  end
end

# require 'pry-debugger'
# isaplpha

# class PigLatin::Regex
#   def translate(words)
#     pig_latin_words_array= []
#     punctionation = []
#     punctuation_index = 0
#     words = words.split
#     words.each do |word|
#       if /\y/.match(word)
#         if /[^aeiou]/.match(word)
#         end
#       elsif /\A[^aeiou]/.match(word)
#         if word.match(/^[[:alpha:]]+$/) #check if word has punctuation
#           punctuation_location = 0
#           word.each do |letter|
#             if word.match(/^[[:alpha:]]+$/)
#               punctuation[punctuation_index] = punctionation[]
#             end
#             punctuation_location += 1
#           end
#         word + s + "ay"
#       else
#         word = word + 'way'
#         pig_latin_words_array << word
#       end
#       punctuation_index += 1
#     end
#     pig_latin_words_array
#   end
# end
