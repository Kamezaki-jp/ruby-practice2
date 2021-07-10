n = gets.to_i

properties = {}
n.times do
  s, a = gets.split(' ')
  properties[s] = a.to_i
end

s = gets
puts properties[s]