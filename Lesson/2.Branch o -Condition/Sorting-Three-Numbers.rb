#Sorting Three Numbers
ar = []
ar[0] = gets.split.map(&:to_i)

arf =ar.flatten
puts arf.sort.join(" ")


=begin
ar[0] = gets.split.map(&:to_i)
arf =ar.flatten
少し気持ち悪い処理になってしまった
でもこうしないとarがネストになってるからsort機能が動かない
#入力:10 18 5
#=>ar = [[10, 18, 5]]
arf =ar.flatten
#=> arf = [10, 18, 5]
入力時に一発でarfが受け取れると良いから分かり次第修正かな
=end
=begin
#sortに関して補足
ary1 = [10, 17, 8]
ary2 = ["10","17","8"]
arys1 = ary1.sort
#=>[8, 10, 17]
arys2 = ary2.sort
#=>["10", "17", "8"]
#ary1は数値、ary2は文字列として見ているため、sort機能が働いていない
p arys1
p arys2
puts arys1.join(" ")
puts arys2.join(" ")
#配列を数値化する必要がある
ary3 = ary2.map { |n| n.to_i  }
p ary3
puts ary3.join(" ")
=end
