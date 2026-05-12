require 'rspec'
require './caesar_cipher.rb'

RSpec.describe CaesarCipher do
  describe "#encrypt" do
    it "returns caesar cipher" do
      caesar_cipher = CaesarCipher.new
      expect(caesar_cipher.encrpyt('a', 1)).to eq('b')
      expect(caesar_cipher.encrpyt('v', 8)).to eq('d')
    end
    it "returns caesar cipher with wrap around" do
      caesar_cipher = CaesarCipher.new
      expect(caesar_cipher.encrpyt('z', 9)).to eq('i')
      expect(caesar_cipher.encrpyt('b', -2)).to eq('z')
    end
    it "returns caesar cipher with large values" do
      caesar_cipher = CaesarCipher.new
      expect(caesar_cipher.encrpyt('u', -25)).to eq('v')
      expect(caesar_cipher.encrpyt('g', 26)).to eq('g')
    end
    it "returns caesar cipher with 0 as key" do
      caesar_cipher = CaesarCipher.new
      expect(caesar_cipher.encrpyt('a', 0)).to eq('a')
    end
  end
end
