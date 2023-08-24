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


end

test = Decode.new()
test.decode_char('.-')





# decode_word("-- -.--")
