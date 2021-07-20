require 'spec_helper'
require_relative '../lib/Caeser'


RSpec.describe 'Caeser Cipher' do

  describe '#caeser_cipher' do

    it "shifts letters" do
      expect(caeser_cipher('abcde', 1)).to eql('bcdef')
    end

    it "shifts letters by a large factor" do
      expect(caeser_cipher('abcde', 100)).to eql('wxyza')
    end

    it "preserves spaces" do
      expect(caeser_cipher('abc def', 1)).to eql('bcd efg')
    end

    it "preserves punctuation" do
      expect(caeser_cipher('abc...def!', 1)).to eql('bcd...efg!')
    end

    it "preserves capitals" do
      expect(caeser_cipher('AbCdEf', 1)).to eql('BcDeFg')
    end
  
  end

end