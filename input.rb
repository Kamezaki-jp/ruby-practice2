# 標準入力（配列に入れる）
n = gets.to_i
int = []

n.times do
  i = gets.to_i
  int << i
end

puts "最大値:#{int.max}"

# やり方2
n = gets.to_i

arr = Array.new(n)
n.times { |i| arr[i] = gets.to_i }

puts arr.max

# 半角区切りで出力
n = gets.to_i

arr = Array.new(n)
n.times { |i| arr[i] = 'paiza' }
# 配列の間に半角スペースで最後はスペースなし
puts arr.join(' ')