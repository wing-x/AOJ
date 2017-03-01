# Print a Frame
loop do
    h, w, = gets.split.map(&:to_i)
    break if h == 0 && w == 0
    puts '#' * w
    puts "##{'.' * (w - 2)}#\n" * (h - 2)
    puts '#' * w
    puts
end
