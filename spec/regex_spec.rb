require 'spec_helper'
require 'pry-debugger'

describe 'PigLatin::Regex' do
  # -> lazy loading :)
  let(:pig) { PigLatin::Regex.new }

  # -> eager loading
  # before do
  #   @mike = Person.new("mike")
  # end
  describe '#translate' do
    context 'word starts with consonant' do
      it 'moves 1st letter to end and adds "ay"' do
        result = pig.translate("glove")
        expect(result.first).to eq("lovegay")
    end
    context 'word starts with vowel'
      it 'concatenates word with way' do
        result = pig.translate("egg")
        expect(result.first).to eq("eggway")
      end
    end
  end
end
