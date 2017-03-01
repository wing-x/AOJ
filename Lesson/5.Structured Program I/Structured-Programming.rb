#Structured Programming
n = gets.to_i
a = []
for i in 1..n
  if i % 3 == 0 || i.to_s =~ /3/
    a << "#{i}"
  end
end

puts " " + a.join(" ")

=begin
場合分けは3の倍数と正規表現の一致で対応
表示方法は迷ったけど配列に入れてからまとめて表示した
=end
