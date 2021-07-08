# rubyで配列のユニーク要素だけ出力する
# [1, 2, 3, 1, 2, 1, 2, 6, 5, "ruby","python","ruby"]という配列から
# 配列内の重複要素を排除し、[1, 2, 3, 6, 5, "ruby", "python"]としてください。

a = [1, 2, 3, 1, 2, 1, 2, 6, 5, "ruby","python","ruby"]
p a.uniq

# ["ruby", nil, "java", nil, nil, "python"]という配列からnillを削除して出力してください。
b = ["ruby", nil, "java", nil, nil, "python"]
p b.compact

# rubyの以下２次元配列で
# [["php", "java", "ruby", "python"],["バージョン3","バージョン2","バージョン1","バージョン0.1"]]を
# [["php", "バージョン3"], ["java", "バージョン2"], ["ruby", "バージョン1"], ["python", "バージョン0.1"]]
# に変換するにはどのように記載すればよいでしょうか？
c  = [["php", "java", "ruby", "python"],["バージョン3","バージョン2","バージョン1","バージョン0.1"]]
p c.transpose

# [5,6,1,3,4] をソートして[1, 3, 4, 5, 6]と出力してください
d = [5,6,1,3,4]
p d.sort

# ["イシカワ","トウキョウ","アオモリ"]の配列内の要素数を出力して下さい。
e = ["イシカワ","トウキョウ","アオモリ"]
p e.count

# ["足立区","港区","豊島区","江東区"]を["足立区","港区","豊島区"]として出力して下さい。
f = ["足立区","港区","豊島区","江東区"]
f.pop
p f

# rubyの配列内の要素を大文字で表示する
# ["python", "ruby", "java"]を["PYTHON", "RUBY", "JAVA"]として出力してください。
g = ["python", "ruby", "java"]
p g.map{|t| t.upcase}

# 出力結果が
# "1:牛丼"
# "2:豚丼"
# "3:カツ丼"
# となるように以下に処理を追加してください。

arrays =["牛丼","豚丼","カツ丼"]
arrays.each_with_index  do |array,i|
  puts "#{i+1}:#{array}"
end

# 以下配列から3で割り切れる値だけを抽出してください
arrays =[20, 21, 22, 23, 24, 25, 26]

# 間違った例
# arrays.each do |array|
#   if array % 3 == 0
#     p array
#   end
# end

p arrays.select { |array| array % 3 == 0 }

# find_allでも可能
# p array.find_all { |n| n % 3 == 0 }

# 3で割り切れる値以外を抽出してください
p arrays.select { |array| array % 3 != 0 }
p arrays.reject { |array| array % 3 == 0 }


