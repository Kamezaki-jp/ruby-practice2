s = gets
a = s.split(":").map(&:to_i)

h = a[0]
m = a[1]

m += 30
if m > 59
    h += 1
    m -= 60
end

if h.to_s.length == 1
    h = "0#{h}"
end

if m.to_s.length == 1
    m = "0#{m}"
end

puts "#{h}:#{m}"