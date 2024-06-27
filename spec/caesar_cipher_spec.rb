# frozen_string_literal: true

require './caesar_cipher'

describe CaesarCipher do
  describe '#caesar_cipher' do
    it 'returns encryption for a single character' do
      expect(CaesarCipher.new.caesar_cipher('a', 4)).to eql('e')
    end

    it 'returns encryption for a capital letter' do
      expect(CaesarCipher.new.caesar_cipher('H', 7)).to eql('O')
    end

    it 'returns encryption for a sentence with spaces' do
      expect(CaesarCipher.new.caesar_cipher('If he had anything confidential to say, he wrote it in cipher',
                                            10)).to eql('Sp ro rkn kxidrsxq myxpsnoxdskv dy cki, ro gbydo sd sx mszrob')
    end

    it 'returns encryption for a string with foreign characters' do
      expect(CaesarCipher.new.caesar_cipher('Hello, World!!', 14)).to eql('Vszzc, Kcfzr!!')
    end

    it 'returns encryption for no string given' do
      expect(CaesarCipher.new.caesar_cipher('', 14)).to eql('')
    end

    it 'returns encryption for a key greater than 26' do
      expect(CaesarCipher.new.caesar_cipher('Hello World', 30)).to eql('Lipps Asvph')
    end
  end
end
