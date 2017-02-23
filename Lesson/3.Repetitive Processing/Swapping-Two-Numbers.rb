# Swapping Two Numbers
loop do
    x, y = gets.split.map(&:to_i)
    break if x == 0 && y == 0
    if x < y
        puts "#{x} #{y}"
    else
        puts "#{y} #{x}"
    end
end

=begin
Print Test Casesと違い、今回はloop doで記載
while tureでも行ける
loop do <= >while tureの関係
厳密にはスコープ範囲が違うらしいけど、あまり詳しい資料が見つからず（whileは制御構造、loop doの記載はリファレンスのKernelモジュール > loopに記載あり）
最初書いた時、Print Test Cases（今は修正済み）でwhile単体で書いても通ったから
そのまま記載したらエラーが出たのでloop doに変更して書いてそのまま提出したという経緯があるため
あとで確認した所、
while 条件 doの書き方が基本というか、これが構文なので
それ以外だと普通はエラーが出るっぽい
Print Test Casesとの時はたまたま
while (x = gets.to_i) doの形になったために動いたっぽい
なので書く時は注意だね
=end
