puts "数字の総数は？"
counts = gets.to_i
integers = []

counts.times do
  puts "数値は？"
  num = gets.to_i
  if num >= 5
    integers << num
  end
end

puts "合計値:#{integers.sum}"