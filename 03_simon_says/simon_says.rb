

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num = 2)
  ("#{str} " * num).strip
end

def start_of_word(str, length)
  str[0...length]
end

def first_word(str)
  arr = str.split(' ')
  arr[0]
end

def titleize(str)
  not_capitalize = ['and', 'over', 'the']
  arr = str.split(' '). each do |word|
    if not_capitalize.include?(word)
      next
    else
      word.capitalize!
    end
  end
  arr[0].capitalize!

  arr.join(' ')
end
