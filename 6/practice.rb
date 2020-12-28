# 便利メソッド
def practice_6_3_4
  text = "123,123-4567"
  # マッチする区切り文字で分解
  p text.split(/,|-/)

  # 置換
  p text.gsub(/,|-/, ":")
end

# キャプチャに名前をつける
def practice_6_3_3
  text = "私の誕生日は1977年7月17日です。"
  m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
  p "マッチした全体は0番目 #{m[0]}"
  p "#{m[:year]} #{m[:month]} #{m[:day]}"

  # 左辺に正規表現リテラルをおくとそのまま変数に代入される
  /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  p "#{year} #{month} #{day}"
end

# キャプチャ
def practice_6_3_2
  text = "私の誕生日は1977年7月17日です。"
  m = /(\d+)年(\d+)月(\d+)日/.match(text)
  p "マッチした全体は0番目 #{m[0]}"
  p "#{m[1]} #{m[2]} #{m[3]}"
end

# マッチするかしないか
def practice_6_3
  # =~マッチするならtrue
  p /\d{3}-\d{4}/ =~ "123-4567"
  # !~マッチしないならtrue
  p /\d{3}-\d{4}/ !~ "123-4567"
end

# 正規表現
def practice_6_2_1
  text = <<-TEXT
    I love Ruby.
    Python is a greate language.
    Java and Javascript are diffrent.
  TEXT
  p text.scan(/[A-Z][A-Za-z]+/)
end

practice_6_3_4