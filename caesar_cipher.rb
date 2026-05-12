# frozen_string_literal: true

def caesar_cipher(string, key)
  alphabet = [*"a".."z"]

  # turning string into array
  string_arr = string.split("")

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
