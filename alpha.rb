puts "1行目"
x = gets.chomp.upcase

puts "2行目"
y = gets.chomp.upcase

puts "3行目"
c = gets.chomp.upcase

if (x..y).include?(c)
  puts "true"
else
  puts "false"
end