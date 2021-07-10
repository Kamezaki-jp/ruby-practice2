n = gets.to_i
a = Array.new(n)
n.times { |i| a[i] = gets.to_i }

exist = false
a.each do |num|
  if num == 7
    exist = true
    break
  end
end

if exist
  puts 'YES'
else
  puts 'NO'
end