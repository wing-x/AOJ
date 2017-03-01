#	Min, Max and Sum
n = gets.to_i
a = gets.split.map(&:to_i)
sum = 0
amax = a.max
amin = a.min
for i in 0..n
    a[i] = a[i].to_i
    sum += a[i]
end

puts "#{amin} #{amax} #{sum}"
