# procオブジェクトはブロックではなくオブジェクトなので複数渡すことが可能
def practice_10_3_3(proc1, proc2, proc3)
  p proc1.call("おはよう")
  p proc2.call("こんにちは")
  p proc3.call("こんばんは")
end

proc1 = proc { |text| text.chars.shuffle.join }
proc2 = proc { |text| text * 2 }
proc3 = proc { |text| "#{text}?" }
practice_10_3_3(proc1, proc2, proc3)

# procオブジェクトについて
def practice_10_3
  # Procオブジェクト
  add_proc = Proc.new do |a, b|
    a + b
  end

  p add_proc.call(1, 2)
  p add_proc.call(3, 2)
end

# 明示的にブロックを受け取る。&が必要
# 1つのメソッドにつき1つしかブロックは受け取れない。
# 複数引数がある場合、ブロックは必ず最後に定義しなければならない。
def practice_10_2_2(&block)
  # ブロックの引数の数を数える
  case(block.arity)
  when 1
    block.call("こんにちは")
  when 2
    block.call("こんにちは", "こんばんは")
  end
end

# ブロックを受け取って実行する
def practice_10_2_1
  puts "begin"
  # ブロックが引数に渡されているかチェック
  if block_given?
    # 渡されたブロックを実行
    yield("処理")
  end
  puts "end"
end

practice_10_3