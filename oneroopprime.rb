#AOJのALDS1_1 C Getting Started - Prime Numbersにもっと効率的なアルゴリズムのやり方があったので、それをrubyで実装
def primecheak(x)
  i = 3
  if x < 2
    return false
  end

  if x == 2
  return true
  end

  if  x % 2 == 0
    return false
  end

  while i <= x**(1/2.0)
    if x % i == 0
    return false
    end
    i += 2 #上のif処理が終えてから加えないと無限ループになる（false返す→i＋2→false返す.....）
  end
  return true
end

num =(1..100).to_a
primenum = []
num.each do |i|
  if primecheak(i) == true
    primenum << i
  else
    #何もしない
  end
end
p primenum
p primenum.length

=begin
実装時のポイント
素数判定では、「合成数xはp≦√xを満たす素因子pをもつ」という性質を利用する
例：31という数が素数かを調べる
√31=5.56…･･･≒6
つまりp≦6となり、合成数かどうかを確かめるには2～6までの数値で割れば確かめられるということ
なぜか、もし7以上の数値でその数が存在するとしたら、それは2～6までの間に存在する倍数になるので、2～6をチェックした段階で既に引っかかるという事

このメソッドを利用すれば1ループで書く事が出来る

チェックするのは
・if x == 2（2本体）
 判定(judge)：true
・xが1、またはxが2の倍数
 judge:false
 ・その他の数字
i = 3
while i <= √x
 if x % i == 0
  judge = false
  i = i + 2
end
こんな感じになる
=end
