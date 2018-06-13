def alphabetize (arr, rev=false)
  arr.sort!
  if rev==true
    return arr.reverse!
  else
    return arr
  end
end
numbers = [2,3,1,4,6,9,0]
print alphabetize(numbers, true)