# method to translate one character from morse
class Decode
  DECODE_LETTER_HASH = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V',
    '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }.freeze
  def decode_char(char)
    return DECODE_LETTER_HASH[char] if DECODE_LETTER_HASH.key?(char)

    'Character not found'
  end

  def decode_word(word)
    sentence = word.split
    sentence2 = sentence.map { |char| decode_char(char) }
    sentence2.join
  end

  def decode_msj(msj)
    sentence = msj.split('   ')
    sentence2 = sentence.map { |word| decode_word(word) }
    sentence2.join(' ')
  end
end
test = Decode.new
puts test.decode_char('.-')
puts test.decode_word('-- -.--')
puts test.decode_msj('-- -.--   -. .- -- .')
puts test.decode_msj('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
