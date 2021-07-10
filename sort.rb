n = gets.to_i

basket = Array.new(n)
n.times { |i| basket[i] = gets.split(' ').map(&:to_i) }

basket.sort!.reverse!

basket.each do |fruits|
  puts fruits.join(' ')
end