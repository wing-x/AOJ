#m,n= gets.chop.split.map(&:to_i)
#デバッグ用
m = 3
n = 4
#実装部
a1 =
    Array.new(m) {Array.new(n, 0)}#あ、これいらなかった 配列の値受け取る時にsplitで受け取れば配列になるから、別配列に入れればネスト化できる
p a1
p Array.new(m)
p Array.new(n)
a1.each do |i|
  puts i.join
end

#以下挙動がおかしくなったのでmemo
m2 = 3, n2 = 4
a2 =
    Array.new(m2) {Array.new(n2, 0)}
p a2
#=>[3,4], #なんでやねん
p Array.new(3,4)
#=>[4, 4, 4]
p Array.new(m2)
#=>[3, 4] #既にこの時点でおかしいんだね
p Array.new(n2)
#=>[nil, nil, nil, nil] #こっちは問題なし

#これだとm2=3,4、さらにn=4に見られる
#実際のコードはこうなっちゃう
#a2 =
#Array.new(3,4) {Array.new(4, 0)}
#=>
#結果的に#Array.new(4,0)を内部に格納しようにも内部的にはnilになってないので失敗する模様
# でもArray.new(3,4)=>って[4,4,4]なんだよね、よー分からん