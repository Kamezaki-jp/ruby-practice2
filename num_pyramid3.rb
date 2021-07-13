i = 0
while i < 5 do

  j = 0
  while j < i do
    print " "
    j += 1
  end

  k = 0
  while k < (5-i)*2-1 do
    print "*"
    k += 1
  end

  puts ""
  i += 1
end