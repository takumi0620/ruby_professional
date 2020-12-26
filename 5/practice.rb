# keyはシンボルのほうが色々な面で効率が良い
HOGE_HASH = {
  japan: "yen",
  us: "dollar",
  india: "rupee"
}

# 配列 <=> ハッシュの変換
def practice_5_6_7
  # ハッシュ -> 配列
  p HOGE_HASH.to_a
  # 配列 -> ハッシュ
  p ([[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]).to_h
end

# 想定外のキーワードを受け取る
def practice_5_6_4(menu, drink: true, **others)
  p menu
  p others
end

# ハッシュの展開
def practice_5_6_2
  p **HOGE_HASH
end

# いろんな便利メソッド
def practice_5_6_1
  # keyだけ
  HOGE_HASH.keys.each do |k| p k end

  # valueだけ
  HOGE_HASH.values.each do |k| p k end

  # そのkeyがあるか
  p HOGE_HASH.has_key?(:japan)
  p HOGE_HASH.has_key?(:korea)
end

# キーワード引数　デフォルト値は任意
def practice_5_4_3(name: nil, stock: 0)
  p name.to_s + " " + stock.to_s
end

# ハッシュのループ
def practice_5_2_2
  HOGE_HASH.each do |key, value|
    p "key: #{key} value: #{value}"
  end
end

practice_5_6_7