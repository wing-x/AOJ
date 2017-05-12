ans = []
while true
  m, f, r = gets.chop.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1
  a = [m, f, r].to_a
  ans << a
end
ans.each do |i, j, k|
  case
    when i == -1 || j == -1
      puts "F"
    when 80 <= i + j
      puts "A"
    when 65 <= i + j && i+j < 80
      puts "B"
    when 50 <= i + j && i+j < 65 || 50 <= k
      puts "C"
    when 30 <= i + j && i+j < 50
      puts "D"
    when i + j < 30
      puts "F"
  end
end


=begin
#簡単かと思ったら場合分けがクソ面倒だなこれ
ちょっと考えないと駄目だ
m == -1 || f == -1
=>puts "F"
80 <= m + f
=>puts "A"
65 <= m + f && m + f < 80
=>puts "B"
50 <= m + f && m + f < 65 || 50 <= r
=>puts "C"
30 <= m + f && m + f < 50
=>puts "D"
30 < m + f
 =>puts "E"
つまりrの点数をどっかに控える必要がある
入力時に判定かけたいけど、そうすると結果出力の前に判定が･･････
あ、そうか
再試験してる人はm + f < 50かつ50 <= rの人はrの点数を格納して判定すればいいのか
これならansは一つで済むね！
あ、駄目だそうすると単純な成績判定にできねえ
やっぱり配列で格納して、それを上手いことやらせるしかないか
下の表現方法を知ったので問題解決
引数を複数しているとちゃんとそれぞれ引っ張ってくれるんだね
頭良い子！
=end

=begin
ans.each do |i,j,k|
  puts "#{i}" + "#{j}" + "#{k}"
end
ans =[[40, 42, -1], [20, 30, -1], [0, 2, -1]]
4042-1
2030-1
02-1
この表現便利だな、覚えておこう
=end