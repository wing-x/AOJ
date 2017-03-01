# How Many Divisors
a, b, c = gets.split.map(&:to_i)
count = 0
for i in (a..b)
    if
    c % i == 0
        count += 1
    end
end

puts count

=begin
約数だけカウントしたいから
範囲内で数値を割って、余りが0に成ったときにカウントを＋1すれば良いってことかな？
=end
