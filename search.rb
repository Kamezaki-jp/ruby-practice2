# １：繰り返す処理回数を取得する
# ２：入力値を格納する空の配列を生成
# ３：指定回数処理を行う
# ４：回数処理の中で、文字列を取得する
# ５：重複した値か判断する
# ６：重複する場合は、過去の重複値を削除する
# ７：配列へ入力した重複値を配列の先頭に追加
# ８：重複しない値の場合は値を配列の先頭に追加

puts "検索した単語数は？"
counts = gets.to_i
strings = []

counts.times do |i|
  puts "検索ワード"
  string = gets.to_s.strip.downcase.chomp
  if strings.include?(string)
    strings.delete(string)
    strings << string
  else
    strings << string
  end
end

puts "検索履歴"
(strings.length-1).downto(0) do |i|
  puts strings[i]
end