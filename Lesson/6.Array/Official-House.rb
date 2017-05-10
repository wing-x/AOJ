# 先に配列作成
ans =
  Array.new(4) do
    Array.new(3) do
      Array.new(10, 0)
    end
  end

# 入力と配列への反映処理
n = gets.to_i
n.times do
  b, f, r, v = gets.split.map(&:to_i)
  ans[b - 1][f - 1][r - 1] += v
end

# 結果の表示
(ans.length).times do |i|
  puts '#' * 20 if i > 0
  ans[i].each do |j|
    puts " " + j.join(' ')
  end
end
