#Watch
S = gets.to_i
hs = 3600
ms =60
h = S/hs
m =(S % hs)/ms
s = S % hs % ms
puts "#{h}:#{m}:#{s}"
