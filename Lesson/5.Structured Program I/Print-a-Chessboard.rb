# Print a Chessboard
loop do
    h, w, = gets.split.map(&:to_i)
    break if h == 0 && w == 0
    h.times do |n|
        if n.even?
            puts ('#.' * w)[0,w]
        else
            puts ('.#' * w)[0,w]
        end
    end
    puts
end

=begin
n.even はn % 2 == 0と同じ意味
コードビューティで整形したらついでに変換してくれた。こりゃ便利
[0,w]の意味は[] (String)で文字列から部分文字列を取り出すメソッド
この場合、1文字目からw文字分取り出す
（そうしないと表示したい文字数より多くなる＆.で終われない）
s = "hello"
puts s[1, 3]   # 2文字目から3文字分
=>ell
puts s[3, 10]  # はみ出しても大丈夫
=>lo
よって今回の場合だと
w = 4の時
puts ('#.' * w)
=>#.#.#.#.
puts ('#.' * w)[0,w]
=>#.#.
となる
こういう使い方もあるんだな、これは凄いわ
=end
