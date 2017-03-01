# A / B Problem
a, b, = gets.split.map(&:to_i)
d = a / b
r = a % b
f = a.to_f / b

puts "#{d} #{r} " + '%.5f' % f

#puts "%d" % d + " " + "%d" % r + " " + "%.5f" % f #気持ち悪いなこれアカンわ
#puts "#{"%d" % d} #{"%d" % r} #{ "%.5f" % f}" #うーん、まだ微妙だけど妥協するとこれか

# puts "#{d} #{r} " + sprintf("%.5f", f)
#puts "%d, %d, %f" % [d,r,f]

=begin
ary = Array.new
ary << "%d, %d, %f" % [d,r,f]
p ary
puts ary.join(" ")
["1, 1, 1.500000"]
1, 1, 1.500000
ダメだこれ
=end
=begin
a = "%d, %d, %f" % [d,r,f]
p a
puts a
"1, 1, 1.500000"
1, 1, 1.500000
#うーん……
a = "%d, %d, %f" % [d],[r],[f]
p a
puts a.join(" ")
=end
# sprintfで最初書こうと思ったけど%(string)の方が楽っぽい?
# でも今回だと実質一つしか使わん
# 10行目に%(string)でまとめる場合も書いたけど、これだと,区切りになるんだよね
# 空白区切りじゃないと弾かれるからダメだしなー
# どうすりゃいいんだろ
#
# fの値を求める時はaをto_fでフロートかしないと上手く出ない
