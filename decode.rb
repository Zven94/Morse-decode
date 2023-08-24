# method to translate one character from morse
class Decode
  Decode_letter_hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V',
    '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }.freeze
  def decode_char(char)
    return Decode_letter_hash[char] if Decode_letter_hash.key?(char)
    'Character not found'
  end
  def decode_word(word)
    sentence = word.split
    sentence2 = sentence.map { |char| decode_char(char) }
    sentence3 = sentence2.join
    return sentence3
  end
  def decode_msj(msj)
    sentence = msj.split('   ')
    sentence2 = sentence.map { |word| decode_word(word) }
    sentence3 = sentence2.join(' ')
    return sentence3
  end
end
test = Decode.new
puts test.decode_char('.-')
puts test.decode_word('-- -.--')
puts test.decode_msj('-- -.--   -. .- -- .')
puts test.decode_msj(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")