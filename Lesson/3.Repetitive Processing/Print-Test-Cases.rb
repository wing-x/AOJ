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
