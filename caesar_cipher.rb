def caesar_cipher(string, cipher_value)
  letters = string.split("")
  ciphered_string = []
  letters.each { |letter| 
    new_letter_value = letter.ord
    if letter.ord <= 90 && letter.ord >= 65
      new_letter_value = (letter.ord + cipher_value) > 90 ? (letter.ord + cipher_value) % 91 + 65 : letter.ord + cipher_value
    elsif letter.ord <= 122 && letter.ord >= 97
      new_letter_value = (letter.ord + cipher_value) > 122 ? (letter.ord + cipher_value) % 123 + 97 : letter.ord + cipher_value 
    end
    ciphered_string.push(new_letter_value.chr)
  }
  puts ciphered_string.join("")
end

puts("Enter string to be ciphered")

string = gets.chomp

puts("Enter cipher value")

cipher_value = gets.chomp.to_i

caesar_cipher(string, cipher_value)