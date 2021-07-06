puts "投球数は？"
counts = gets.to_i
strings = []
num = 0

counts.times do
  string = gets.strip.chomp
  if string == "strike"
    num += 1
  end
  strings << string
end

strings.pop

strings.each_with_index do |st, i|
  puts "#{st}!"
  if strings.count == i + 1
    if num == 3
      puts "out!"
    else
      puts "fourball!"
    end
  end
end