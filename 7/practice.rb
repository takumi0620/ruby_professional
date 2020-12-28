# 特異メソッド
# インスタンス単位でメソッドの追加ができる
alice = "I am alice."
bob = "I am bob."
def alice.shuffle
  chars.shuffle.join
end

p alice.shuffle
# bobインスタンスにshuffleメソッドはないのでエラーになる
# p bob.shuffle

class Human
  def initialize(name)
    @name = name
  end
end

class User < Human
  def initialize(name)
    # 引数がsuperクラスと一緒なら省略可
    super
  end

  # クラスメソッド
  def self.create_user(name)
    p name
    User.new(name)
  end
end

User.create_user("たくみ")
User.new("たくみ")