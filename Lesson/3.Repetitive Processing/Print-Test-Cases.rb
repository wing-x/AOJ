#Print Test Cases
i = 0
while true
  x = gets.to_i
  i += 1
  break if x == 0
  puts "Case #{i}: #{x}"
end
=begin
条件付きでループをブレイクすれば良いのかな
putsはeachでループさせればいいのか？
問題文を読んだら、入力毎に出力っていう形で良いらしい
サンプルが分かり辛いよー
=end

=begin
while true doが本来の形で、doだけは省略可能
で書く時はtureを忘れずに
true無しで動く場合もあるけど、バグの元（というかこのプログラムでそれをやってしまった）
その認識の誤りから Swapping Two Numbersで失敗した
=end
