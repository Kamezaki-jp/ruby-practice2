["こんにちは","おはよう","さよなら"].each do |greeting|
  puts greeting
end

["こんにちは","おはよう","さよなら"].each {|greeting|
  puts greeting 
}

# each_with_index
arrays = ["みかん", "オレンジ", "ぶどう"]
arrays.each_with_index do |array, i|
  puts "#{i+1}:#{array}"
end

# times
5.times do
  puts "ruby"
end

5.times do |i|
  puts "#{i+1}:ruby"
end

