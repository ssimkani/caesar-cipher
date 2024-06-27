def caesar_cipher(string, key)
  # Encrypts the given string using the Caesar Cipher
  #
  # @param string [String] The string to encrypt
  # @param key [Integer] The amount to shift each letter by
  # @return [String] The encrypted string

  alphabet = [*'a'..'z']

  # turning string into array
  string_arr = string.split('')

  # map method for encryption
  string_arr.map! do |char|
    if !alphabet.include?(char.downcase)
      char
    elsif char == char.upcase
      alphabet[(alphabet.index(char.downcase) + key) % 26].upcase
    else
      alphabet[(alphabet.index(char.downcase) + key) % 26]
    end
  end

  # return encrypted string
  string_arr.join
end
