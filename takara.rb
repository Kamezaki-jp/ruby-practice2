puts "当選番号は？"
win_num = gets.to_s.strip.chomp

puts "枚数は？"
ticket_count = gets.to_i

second_win_num = win_num.slice(2..7).to_i
third_win_num = win_num.slice(3..7).to_i

strings = []

ticket_count.times do 
  puts "宝くじの番号は？"
  string = gets.strip.chomp
  strings << string
end

strings.each do |str|
  if str.chomp.to_i == win_num.to_i
    puts "first"
  elsif str.chomp.to_i == win_num.to_i + 1 || str.chomp.to_i ==  win_num.to_i - 1
    puts "adjacent"
  elsif str.chomp.to_s.slice(2..7).to_i == second_win_num
    puts "second"
  elsif str.chomp.to_s.slice(3..7).to_i == third_win_num
    puts "third"
  else
    puts "blank"
  end
end