# push:配列の末尾に要素を追加
a = ["東京", "福岡"]
print a

a.push("大阪")
puts ""
print a

# pop:配列の末尾の要素を削除
# pop(数字)で削除する要素数を指定できる
a.pop(2)
puts ""
print a

# map、collectで配列内の要素数だけを繰り返し処理を実行できる
b = ["PYTHON", "RUBY", "JAVA"]
puts ""
print b.map {|text| text.downcase }

# count:配列内の要素数をカウント
name = ["田中","鈴木","Tomy"]
puts ""
puts name.count

# empty?:配列内に要素があるか確認
# 実務例として、.empty?で配列内のユーザーや値が空か空ではないかで処理を変更する事があります。
puts a.empty?

# transpose:配列の行列を入れ替える
test =  [["東京", "福岡", "大阪"],["新潟","さいたま","鹿児島"]]
print test
puts ""
print test.transpose

# uniq:配列内の重複要素を削除する
c = [1, 2, 3, 1, 2, 4, "ruby","python","ruby"]
puts ""
print c.uniq

# zip:２つの配列を組み合わせて、２次元配列を作成します。
# transposeメソッドとの違いは足りない要素はnilで返されます。
text = ["ruby", "python", "java"]
num = [1, 2, 3]
puts ""
print text.zip(num)

# product:総当たりの組み合わせの配列を生成する
text1 = ["フルーツ"]
text2 = ["りんご", "みかん", "バナナ"]
sets = text1.product(text2)
puts ""
print sets 

# take:先頭からn個の要素を取得し、新しい配列を作成して返します。
d = ["足立区","港区","豊島区","江東区"]
puts ""
print d.take(2)

# group_by:要素をグループ化しHashで返す
# group_byメソッドは重複した要素は Hashの要素へ重複分追加され、
# 重複していない要素は、Hashのkeyと要素が同じ値になります。
categories=["programming","php","python","ruby","python","programming"]
puts ""
print categories.group_by {|v|v}

# select:配列の抽出
array =[20, 21, 22, 23, 24, 25, 26]
p array.select {|n| n % 3 == 0}

# reject:条件に合致しない要素を集めて、新しい配列にして返す
array =[20, 21, 22, 23, 24, 25, 26]
p array. reject { |n| n % 3 == 0 }
## => [20, 22, 23, 25, 26]