require 'pry-debugger'

class PigLatin::Regex
  def translate(words)
    pig_latin_words_array = []
    words = words.split
    words.each do |word|
      if /\A[y]/.match(word) # first letter y
        cons = cons_rule(word).to_s
        word += word.slice!(0, cons.length) + 'ay'
        pig_latin_words_array << word
      elsif cons_rule(word) # first letter cons
        cons = y_rule(word).to_s
        word += word.slice!(0, cons.length) + 'ay'
        pig_latin_words_array << word
      else # first letter is vowel
        word = word + 'way'
        pig_latin_words_array << word
      end
    end
    pig_latin_words_array
  end

  def y_rule(word)
    /\A[^aeiou]*/.match(word)
  end
  def cons_rule(word)
    /\A[^aeiouy]*/.match(word)
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
