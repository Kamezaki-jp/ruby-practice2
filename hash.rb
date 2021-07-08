# そもそもHashとは
# {Key=>値}のようにハッシュの中にKeyと値をペアをセットで格納する物をHashといいます。
# Hash.newや{}を使うと空ハッシュ生成され、その中に値を登録できます。
# またハッシュから値を取り出したり、値を追加したりする事も可能です

# Hashで値を取り出す。
# 値を取り出すには[key]で取得します。 存在しないkeyを取得しようとするとnilが返ってきます。

# Keyを設定するにはkeyを""をダブルクオートか''シングルクオートで囲います。

p a = {"test"=>1, "1"=>2}
p a["1"]
p a["test"]

# また、Keyを設定するには:でも設定可能です。

b = {:test=>1,:test2=>2}
p b[:test2]

# またKeyと値のペアを=>ではなくシンボル(:)で設定する事も可能です。 
# ※値の取り出し方に=>で設定する場合と違いはありません
c = {test3:1,test4:2}
p c[:test3]

# .keysでHashのkeyを取り出す
animals = { "像" => 2, "ライオン" => 5, "トラ" => 9 }
p animals.keys

# .valuesでHashの値を取り出す
p animals.values

# .lengthか.sizeでHashのKeyと値のペアの数を数える
p animals.length
p animals.size

# .storeか[]=でHashの値を追加する
# hashへKeyと値を追加する場合は[]=かstoreメソッドを利用します。

# []=を利用する場合
price = { "みかん" => 150, "りんご" => 160, "もも" => 190}
price["バナナ"] = 123
p price

# storeメソッドを利用する場合
price.store("ぶどう", 200)
p price

# ちなみに既に存在するkeyに値を追加しようとすると 値が上書きされます。
price["バナナ"] = 321
p price

# deleteメソッドでHashのKeyと値を削除する
# deleteメソッドでkeyを指定するとkeyと値が削除されます。 keyが見つからないときはnilを返します。
price.delete("みかん")
p price
p price.delete("みかん")

# delete_ifで指定条件で複数のKeyと値を削除
# delete_ifでは、指定条件を指定してKeyと値を一括で削除できます。 
# 以下では値が170未満の値とkeyを削除します。

price2 = { "大根" => 50, "人参" => 160, "お肉" => 190}
price2.delete_if {|key, val| val < 170}
p price2

# selectメソッドで指定条件に合致するKeyと値を表示する
man = { '田中' => 1, 'ヤマダ' => 2, '佐藤' => 3, '西村' => 4 }
p man.select {|k, v| v >= 3}

# to_aメソッドでハッシュを配列化
# .to_aメソッドを利用すれば、ハッシュのkeyと値が入った配列を２次元配列として返します
man2 = { :ben => 170, :jhon => 190, :dan => 200}
p man2.to_a

# to_hメソッドで２次元配列をハッシュ化する
fruits =[["りんご", 200], ["マンゴー", 140], ["ぶどう", 200]]
p fruits.to_h