# 慣習として?で終わるメソッドは真偽値を返す
def practice_2_11_2
  p "".empty?
  p "aa".empty?
end

# case文
def practice_2_10_4(country)
  # 複数指定も可 "japan", "日本"
  p case country
  when "japan"
    "こんにちは"
  when "us"
    "hello"
  when "italy"
    "ciao"
  else
    "???"
  end
end

# 終了するタイミング
def practice_2_10_1
  # 最後に評価された式が返却されるので3 falseが出力される
  p 1 && 2 && 3
  p 1 && false && 3
end

# フォーマット指定
def practice_2_8_4
  # 小数点以下三桁のフォーマット
  p sprintf("%0.3f", 1.2)
end

# ヒアドキュメント
def practice_2_8_3
  str = "埋め込む"
  p <<TEXT
  これはヒアドキュメント
  長い文字列を作るのに#{str}
  効果的
TEXT
# 終端をインデントしてはだめ。インデントしたければ始端を<<-で実装しなければならない。
end

# 後置if
def practice_2_5_3(day)
  point = 7
  # 条件を満たす場合のみpoint *= 5が実行される
  point *= 5 if day == 1
  p point
end

# 型変換について
def practice_2_4_3
  # 暗黙的型変換は無理
  p 1.to_s + "2"
  p 1 + "2".to_i
end

# 文字列の比較
def practice_2_3_2
  # 文字コードが比較対象になる
  p "a" < "b"
  p "a" < "A"
end

# リテラル
def practice_2_2_7
  p 123
  p "Hello"
  p [1, 2, 3]
  p({'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee'})
  p /\d+-\d+/
end

# すべてがオブジェクト
def practice_2_2_1
  p '1'.to_s
  p 1.to_s
  p nil.to_s
  p true.to_s
  p false.to_s
  p /\d+/.to_s
end

practice_2_11_2