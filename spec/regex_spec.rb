require 'spec_helper'
require 'pry-debugger'

describe 'PigLatin::Regex' do
  # -> lazy loading :)
  let(:pig) { PigLatin::Regex.new }

  # -> eager loading
  # before do
  #   @mike = Person.new("mike")
  # end
  describe '#y_rule' do
    it 'considers letter "y" to be consonant when 1st letter' do
      results = pig.y_rule('yellow').to_s
      expect(results.to_s).to eq('y')
      results = pig.y_rule('yclad').to_s
      expect(results.to_s).to eq('ycl')
    end
  end
  describe '#cons_rule' do
    it 'converts words starting w/ consonants to pig latin' do
      results = pig.cons_rule('gideon').to_s
      expect(results).to eq('g')
      results = pig.cons_rule('shlong').to_s
      expect(results).to eq('shl')
    end
  end
  describe '#translate' do
    context 'word starts with consonant' do
      it 'moves 1st letter to end and adds "ay"' do
        result = pig.translate("glove")
        expect(result.first).to eq("oveglay")
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
        result = pig.translate('the name is gideon')
        expect(result).to eq(['ethay', 'amenay', 'isway', 'ideongay'])
      end
    end
    context 'more complex pig latin rules' do
      it 'translates a word beginning with a vowel' do
        result = pig.translate('apple')
        expect(result.first).to eq('appleway')
      end

      it 'translates a word with two consonants' do
        result = pig.translate('stupid')
        expect(result.first).to eq('upidstay')
      end

    #   it 'several consonants grouped together' do
    #     pig.translate(“three”).should == “eethray”
    #   end

    #   it “counts ‘qu’ as a single phoneme” do
    #     s = pig.translate(“quiet”)
    #     s.first.should == “ietquay”
    #   end

    #   it “counts ‘sch’ as a single phoneme” do
    #     s = pig.translate(“school”)
    #     s.first.should == “oolschay”
    #   # end
    end
  end
end
