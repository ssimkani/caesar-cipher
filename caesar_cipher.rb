def caesar_cipher(string, key)
  alphabet = [*"a".."z", *"a".."z"]
  string_arr = string.split("")

  string_arr.map! do |char|
    if !alphabet.include?(char.downcase)
      char
    elsif char == char.upcase
      alphabet[(alphabet.index(char.downcase) + key) % 26].upcase
    else
      alphabet[(alphabet.index(char.downcase) + key) % 26]
    end
  end
end
