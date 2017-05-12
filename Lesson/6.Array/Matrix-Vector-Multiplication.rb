n, m= gets.chop.split.map(&:to_i)

a = []
b = []
ans1 = []

n.times do |i|
  as = gets.chop.split.map(&:to_i)
  a << as
end

m.times do |j|
  bs = gets.to_i
  b << bs
end

n.times do |i|
  m.times do |j|
    cs = a[i][j] * b[j]
    ans1 << cs
  end
end

ans2 = ans1.each_slice(m).to_a
ans3 =[]
n.times do |i|
  ds = ans2[i].inject(:+)
  ans3 << ds
end

puts ans3