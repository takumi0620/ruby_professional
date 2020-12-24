# いろいろな制御構文
def practice_4_10_4
  [1,2,3,4,5].each do |value|
    # 偶数であればとばして次ヘ進む
    next if value.even?
    p value
  end

  # redoというブロックの最初からやり直す制御構文もある
end

# いろいろなループ
def practice_4_9
  5.times do |value|
    p value
  end

  # 10から14まで
  10.upto(14) do |value|
    p value
  end

  # 14から10まで
  14.downto(10) do |value|
    p value
  end

  # 1から10まで2ずつ増やす
  1.step(10, 2) do |value|
    p value
  end

  # 条件式がtrueの間実行
  a = []
  while a.size < 5
    a <<  1
  end
  output(a)

  # 条件式がfalseの間実行
  b = []
  until b.size == 5
    b <<  2
  end
  output(b)

  # 普通のfor文
  c = [1,2,3,4]
  for v in c
    p v
  end

  # 無限ループ
  i = 0
  loop do
    i += 1
    p "無限ループ #{i}"
    break if i == 4
  end
end

# 多重配列
def practice_4_8_4
  # ブロック引数を増やすと全部うけとれる
  size = [
    [10, 20],
    [30, 20],
    [60, 80],
  ]
  size.each do |width, height|
    p "幅　#{width} 高さ #{height}"
  end

  # 添字つきは()が必要
  size.each_with_index do |(width, height), index|
    p "幅　#{width} 高さ #{height} 添字 #{index}"
  end
end

# 添字付き
def practice_4_8_1
  [1, 2, 4].each_with_index do |value, index|
    p "添字 #{index} 値 #{value}"
  end
end

# 配列の初期化
def practice_4_7_12
  output Array.new(5, 0)
  # ブロック渡すことも可能
  output(Array.new(5) do |n|
    (n + 1) * 2
  end)
end

# 文字列を配列に変換
def practice_4_7_11
  output "Ruby".chars
end

# 配列の展開
def practice_4_7_6
  a = [1,2,3]
  b = [1]
  # b.push(a)だと[1, [1,2,3]]になる
  output(b.push(*a))
end

# 和集合、差集合、積集合
def practice_4_7_4
  a = [1,2,3]
  b = [3,4,5]
  output(a | b)
  output(a - b)
  output(a & b)
end

# 範囲指定
def practice_4_7_1
  a = [1,2,3,4,5,6]
  output(a[0,3])
end

# rangeオブジェクトによる配列作成
def practice_4_5_4
  output((1..3).to_a)
  output([*1..3])
end

# rangeオブジェクトによる要素抽出
def practice_4_5_1
  a = [1,2,3,4]
  output(a[1...3])
end

# rangeオブジェクト
def practice_4_5
  # 最後の数を含める
  p 1..2
  # 含めない
  p 1...2
end

# シンタックスシュガー
def practice_4_4_5
  # ブロック引数が1個だけ
  # ブロックの中で呼び出すメソッドに引数がない
  # ブロックの中で行う処理はメソッドを1つ呼び出すだけ
  # を満たす場合、&:記法が使える

  # 奇数抽出
  p [1,2,3,4,5].select(&:odd?)
end

# 畳み込み演算　
def practice_4_4_4
  numbers = [1,2,3,4]
  # 全部足す。0は初期値
  p numbers.inject(0) { |result, i| result + i }
end

# 特定要素の削除
def practice_4_4_3
  numbers = [1,2,3,1,2,6]
  # 3の倍数だけ削除
  output(numbers.reject { |n| n % 3 == 0 })
end

# 配列による多重代入
def practice_4_2_2
  a, b = [1, 2]
  p a
  p b
end

# 要素の追加
def practice_4_2_1
  a = [1, 2, 3]
  # 間の要素はnilで埋められる
  a[10] = 10
  # <<で最後に追加
  a << 11
  output(a)
end

# 配列の定義
def practice_4_2
  a = [1, 2, 3, "apple"]
  output(a)
end

def output(arr)
  arr.each do |e|
    p e
  end
end

practice_4_10_4