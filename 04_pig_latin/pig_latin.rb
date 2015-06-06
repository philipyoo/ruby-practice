
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
  ender = []

  if vowels.include?(word[0])
    return word + 'ay'
  else
    arr = word.split(//)
    arr.each do |letter|
      if letter == 'u' && ender[-1] == 'q'
        ender << arr[0]
        arr.shift(1)
      elsif vowels.include?(letter)
        ender << "ay"
        ender << arr
      else
        ender << arr[0]
        arr.shift(1)
      end
    end
  end

  ender.join('')
end


#rule 1:
# if a word begins with vowel, add 'ay' at end

#rule 2:
# if word begins with consonant, move to end and add 'ay'

#rule 3:
# exception made for "qu"
