
def translate(str)
  arr = str.split(' ')
  new_arr = []

  arr.each do |word|
    new_arr << transformer(word)
  end

  new_arr.join(' ')
end


def transformer(word)
  vowels = %w(a e i o u)
  final = []
  ender = []

  if vowels.include?(word[0])
    return word + 'ay'
  else
    arr = word.split(//)
    count = 0

    while count < arr.size
      if arr[count] == 'u' && ender[-1] == 'q'
        ender << arr[count]
      elsif vowels.include?(arr[count])
        final << arr[count..-1]
        final << ender
        final << 'ay'
        break
      else
        ender << arr[count]
      end
      count += 1
    end
  end

  final.join('')
end


#rule 1:
# if a word begins with vowel, add 'ay' at end

#rule 2:
# if word begins with consonant, move to end and add 'ay'

#rule 3:
# exception made for "qu"
