# 文字列を変換
str = "hello"
puts str.upcase
str2 = "HELLO"
puts str.downcase

# 文字列を配列にする
str = "こんにちは,おはよう,ruby"
p str.split(',')

# 特定の文字列を表示
str = "こおんはによちうわ"

str.each_char.with_index{|c, index|
  # odd? 奇数かどうか
  # even? 偶数かどうか
  if index.odd?
    print c
  end
}

print "\n"

# rubyで文字列を挿入する
str = "Ruby,Python,PHP"
str.insert(4, ",Java")
puts str

