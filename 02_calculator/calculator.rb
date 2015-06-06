
def add(n1, n2)
  n1 + n2
end

def subtract(n1, n2)
  n1 - n2
end

def sum(arr)
  if arr.size == 0
    return 0
  else
    arr.reduce(:+)
  end
end

def multiply(arr)
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    arr.reduce(:*)
  end
end

def power(n1, n2)
  n1 ** n2
end

def factorial(n)
  if n == 0 || n == 1
    1
  else
    n * factorial(n-1)
  end
end
