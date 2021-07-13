i = 0
while i < 5 do
  j = 0
  while j < 5-(i+1) do
    print " "
    j += 1
  end

  k = 0
  while k < (i+1)*2-1 do
    print "*"
    k += 1
  end
  puts ""
  i += 1
end