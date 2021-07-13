for i in 1..9
  for j in 1..9
    if j < 8
      ans = i * j
      print "#{ans}" + " "
    end

    if j == 9
      ans = i * j
      puts ans
    end
  end
end