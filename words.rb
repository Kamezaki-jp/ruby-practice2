puts "文字列は？"
words = gets.chomp.split(" ")
hashs = words.group_by(&:itself).map {|key, value|[key, value.count]}.to_h

hashs.each do |key, value|
  puts "#{key} #{value}"
end
