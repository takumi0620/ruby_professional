# 状態を保持するmodule
module AwesomeApi
  # クラスインスタンス変数で状態を保持する
  @base_url = ""
  @debug_mode = false

  # クラスインスタンス変数を読み書きするための特異メソッド
  class << self
    def base_url=(value)
      @base_url = value
    end

    def base_url
      @base_url
    end

    def debug_mode=(value)
      @debug_mode = value
    end

    def debug_mode
      @debug_mode
    end
  end
end

# 設定値の保存
AwesomeApi.base_url = "http://example.com"
AwesomeApi.debug_mode = true

p AwesomeApi.base_url
p AwesomeApi.debug_mode