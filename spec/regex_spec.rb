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
    end
    context 'word starts with vowel' do
      it 'concatenates word with way' do
        result = pig.translate("egg")
        expect(result.first).to eq("eggway")
      end
    end
    context 'works with multiple words' do
      it 'gives back an array of translated words' do
        result = pig.translate('hello my name is gideon')
        expect(result).to eq(['ellohay', 'ymay', 'amenay', 'isway', 'ideongay'])
      end
    end
    # context 'more complex pig latin rules' do
    #   it “translates a word beginning with a vowel” do
    #     s = pig.translate(“apple”)
    #     s.first.should == “appleay”
    #   end

    #   it “translates a word with two consonants” do
    #     s = pig.translate(“stupid”)
    #     s.first.should == “upidstay”
    #   end

    #   it “gloms several consonants in a row” do
    #     pig.translate(“three”).should == “eethray”
    #   end

    #   it “counts ‘qu’ as a single phoneme” do
    #     s = pig.translate(“quiet”)
    #     s.first.should == “ietquay”
    #   end

    #   it “counts ‘sch’ as a single phoneme” do
    #     s = pig.translate(“school”)
    #     s.first.should == “oolschay”
    #   end
    # end
  end
end
