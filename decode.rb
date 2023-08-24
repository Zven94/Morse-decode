# method to translate one character from morse
class Decode
  Decode_letter_hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..--.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V',
    '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }  
  def decode_char(char)
    if Decode_letter_hash.key?(char)
      puts Decode_letter_hash[char]
    else
      puts 'Character not found'
    end
  end

  # method to translate one word from morse

  def decode_word(word)
    full_word = []
    my_word = word.split(/ /)
    puts my_word
    my_word.each do |w|
      full_word.push(decode_char(w)) 
    end
    decoded_word = full_word.join('\n')
    puts decoded_word
  end
end

test = Decode.new()
test.decode_char('.-')
test.decode_word('.--- .---')





# decode_word("-- -.--")
