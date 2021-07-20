require 'pry'

# Caeser Cipher
# Encrypts a message by shifting all letters right by given shift factor

def caeser_cipher(message, shift)
  char_list = message.chars
  char_list.map! do |char|
    char = char.ord
    
    if char.between?(65, 90)
      char = (((char - 65) + shift) % 26) + 65
    elsif char.between?(97, 122)
      char = (((char - 97) + shift) % 26) + 97
    else
      char
    end

    char = char.chr
  end
  char_list.join("")
end


puts caeser_cipher("abcde", 100)
caeser_cipher("My very secret message.", 3)