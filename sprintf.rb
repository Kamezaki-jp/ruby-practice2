# 桁数によって0を補う
n = gets.chomp.to_s

if n.length == 1
    puts "0" + "0" + n
elsif n.length == 2
    puts "0" + n
else
    puts n
end

# 最適解
n = gets.to_i
puts sprintf('%03d', n)

# # 数値を右詰めで指定します。
# str = sprintf("%10d", 123)
# p str #=> "       123"
# # 数値を左詰めで指定します。
# str = sprintf("%-10d", 123) 
# p str #=> "123       "
# # 数値を符号付きで指定します。
# str = sprintf("%+10d", 123) 
# p str #=> "       +123"
# # 数値を右詰めで指定し、余った空白をゼロで埋めます。
# str = sprintf("%010d", 123) 
# p str #=> "0000000123"
# # 小数点以下の桁数を指定します。
# str = sprintf("%10.3f", 123.4) 
# p str #=> "   123.400"
# # 文字列を右詰めで指定します。
# str = sprintf("%10s", "abc") 
# p str #=> "       abc"
# # 文字列を左詰めで指定します。
# str = sprintf("%-10s", "abc") 
# p str #=> "abc       "
# # 複数の値を渡して指定することができます。
# str = sprintf("%3d is not %3s", 123, "abc")
# p str #=> "123 is not abc"