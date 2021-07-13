# 3に1~10をそれぞれかけて奇数か偶数か表示する
ans = 3
1..10.times do |i|
  ans = ans * (i+1)
  if ans % 2 == 0
    puts "#{ans} : 偶数"
  elsif ans % 2 == 1
    puts "#{ans} : 奇数"
  end
end