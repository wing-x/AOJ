#Finding-Missing-Cards
n = gets.chomp.to_i
my_cards = {S:(1..13).to_a, H:(1..13).to_a, C:(1..13).to_a,D:(1..13).to_a}

n.times do
    card_case, number = gets.chomp.split
    case card_case
    when "S"
        my_cards[:S] -= [(number.to_i)]
    when "H"
        my_cards[:H] -= [(number.to_i)]
    when "C"
        my_cards[:C] -= [(number.to_i)]
    when "D"
        my_cards[:D] -= [(number.to_i)]
    end
end

my_cards[:S].each do |i|
    puts "S #{i}"
end
my_cards[:H].each do |i|
    puts "H #{i}"
end
my_cards[:C].each do |i|
    puts "C #{i}"
end
my_cards[:D].each do |i|
    puts "D #{i}"
end

=begin
p my_cards
=>
{:S=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
 :H=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
 :C=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
 :D=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]}
 ハッシュの中に配列が組み込めるっていうのは予想外だった
 確かに管理するならこれでもいいわけか。
=end
