def pyramid(n)
  1.upto(n) { |x|
    puts (" "*(n-x) + "*"*(2*x-1))
  }
end

pyramid(4)