module Loggable
  # 特異メソッドの定義可
  def self.log(text)
    puts text
  end

  def log2(text)
    puts text
  end

  # logメソッドをミックスインとしても特異メソッドとしても扱える
  # ミックスインすると自動でprivateになる
  module_function :log2
end

Loggable.log2 "あああ"

class Hoge
  include Loggable

  def name(text)
    log2 "call name"
  end
end

Hoge.new.name "あああ"