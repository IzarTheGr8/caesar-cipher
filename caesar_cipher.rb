# frozen_string_literal: true

ALPHABET = ('a'..'z').to_a

def caesar_cipher(input, shift = 0)
  input.each_char.map do |letter|
    letter_index = ALPHABET.index(letter.downcase)

    if letter_index
      new_letter_index = letter_index + shift
      new_letter_index -= ALPHABET.length unless new_letter_index < ALPHABET.length
      letter == letter.upcase ? ALPHABET[new_letter_index].upcase : ALPHABET[new_letter_index]
    else
      letter
    end
  end.join
end

puts 'Input:'
input = gets.chomp

puts 'Shift factor:'
shift = gets.chomp.to_i

puts caesar_cipher(input, shift)
