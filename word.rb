n = gets.to_i
m = gets.chomp

array = Array.new()

n.times do |i|
    array[i] = gets.chomp
end

count = 0
array.each do |arr|
    if arr.include?(m)
        puts arr
        count += 1
    end
end

if count == 0
    puts "None"
end
