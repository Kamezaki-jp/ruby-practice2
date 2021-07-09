puts "工事は何周続きますか？"
n = gets.to_i

puts "開始時間 時 分の順番で入力してください。"
n.times do
    t, t_h, t_m = gets.chomp.split(' ')
    h, m = t.split(":").map(&:to_i)
    t_h = t_h.to_i
    t_m = t_m.to_i
    h += t_h
    m += t_m
    
    if m > 59
        h += 1
        m -= 60
    end
    
    if h > 23
        h -= 24
    end
    
    h = h.to_s
    m = m.to_s
    
    if h.length == 1
        h = "0#{h}"
    end
    
    if m.length == 1
        m = "0#{m}"
    end
    
    puts "#{h}:#{m}"
end