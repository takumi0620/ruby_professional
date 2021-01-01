require "date"

# rescue修飾子
def practice_9_6_5(string)
  # 例外がおこったときに返却する値を指定する。捕捉される例外はstandard error
  Date.parse(string) rescue nil
end

# 正常終了
def practice_9_6_3(num)
  begin
    p 1 / num
  rescue => e
    puts "エラー: #{e.message}"
  else
    # 例外が発生しなかった場合に通る
    puts "正常終了！"
  ensure
    # finally的な処理
    puts "終了処理"
  end
end

# finallyのような処理
def practice_9_6_1
  begin
    raise StandardError.new("SQLエラー！！")
    puts "後続処理"
  rescue => e
    puts "エラー: #{e.message}"
  ensure
    # finally的な処理
    puts "DBクローズ"
  end
end

def practice_9_2_4
  begin
    1 / 0
  rescue => e
    puts "エラークラス #{e.class}"
    puts "エラーメッセージ #{e.message}"
    puts "バックトレース  -----"
    puts e.backtrace
    puts "-----"
  end
end


p practice_9_6_5 "2020-1-8"