n = gets.to_i
m = gets.chomp

n.times do |i|
    word = gets.chomp
    if word.include? m
        puts word
    else
        puts "None"
    end
end