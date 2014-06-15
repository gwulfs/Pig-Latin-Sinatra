require 'pry-debugger'

class PigLatin::Regex
  def translate(words)
    pig_latin_words = []
    words = words.split
    words.each do |word|
      # if /\y/.match(word)
      #   if /[^aeiou]/.match(word)
      #     word =
      #     pig_latin_words << word # TODO
      #els
      if /\A[^aeiou]/.match(word)
        word = word[1..-1] + word[0] + 'ay'
        pig_latin_words << word
      else
        word = word + 'way'
        pig_latin_words << word
      end
    end
    pig_latin_words
  end
end

# require 'pry-debugger'
# isaplpha

# class PigLatin::Regex
#   def translate(words)
#     pig_latin_words= []
#     punctionation = []
#     punctuation_index = 0
#     words = words.split
#     words.each do |word|
#       if /\y/.match(word)
#         if /[^aeiou]/.match(word)
#          # TODO
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
#         pig_latin_words << word
#       end
#       punctuation_index += 1
#     end
#     pig_latin_words
#   end
# end
