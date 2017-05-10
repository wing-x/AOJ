#Reversing-Numbers

n = gets.to_i
ary = gets.split.map(&:to_i)
puts ary.slice(0,n).reverse.join(" ")

=begin
ary <<  gets.split.map(&:to_i)にするとネストの配列になるっぽい
5
1 2 3 4 5
=>[[1, 2, 3, 4, 5]]
そもそもsplitメソッドが配列として返すんだから、空の配列にsplitの配列が入るから当たり前じゃないか
=end

=begin
sliceの挙動が思ってたのと違うね
sliceは指定した引数を元に、配列から「取り出すだけ」だから、aryそのものを書き換えない（つまりその場限り）
slice!は取り出して書き換えるかと思えば、引数で指定した位置を「削除する」aryも書き換える(つまり取り出した物で書き換えるわけでなく、aryは取り出した後の残り物になる
だからslice後の配列が欲しかったら新しい配列として指定するしかないね。
しかも元はaryから取り出してるから、aryも保持しておく必要がある。
覚えておこう。
animals = ["dog", "cat", "mouse", "rabbit", "horse"]
p animals.slice(1, 3)
#=>["cat", "mouse", "rabbit"]
p animals
#=> ["dog", "cat", "mouse", "rabbit", "horse"]
p animals.slice!(1, 3)
#=>["cat", "mouse", "rabbit"]
p animals
#=>["dog", "horse"]
=end
