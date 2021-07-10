n, m, k = gets.split(' ').map(&:to_i)

all_k = Array.new(n)
n.times { |i| all_k[i] = gets.split(' ').select { |num| num.to_i == k } }

all_k.each do |column|
  puts column.length
end