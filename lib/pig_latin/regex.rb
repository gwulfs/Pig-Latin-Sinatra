class PigLatin::Regex
  def translate(word)
    if /y/.match(word)
      # weird 'y' logic
    elsif /\A[^aeiou]/.match(word)
      pig_word = word[1..-1] + word[0] + 'ay'
    end
  end
end
