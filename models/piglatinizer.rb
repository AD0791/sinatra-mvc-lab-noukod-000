class PigLatinizer
  def piglatinize(words)
    word_array = words.split ' '

      word_array.map do |word|
        if word.downcase.scan(/^[aeoui]+/).empty? == false
          word + "way"
        else
          word_scan_2 = word.scan(/^[^aeoui]+/).join ''
          word[0, word_scan_2.size] = ''
          word + word_scan_2 + "ay"
        end
      end.join ' '
  end
end
