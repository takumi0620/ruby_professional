# is-aの関係にないが、共通のメソッドを定義したいときにmoduleへ実装しincludeするような使い方をする。
module Loggable
  # include先でもprivateとして扱われる。publicのままではinclude先のクラスのpublicなインスタンスメソッドとして扱われてしまう。
  private
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable
  def title
    log "title is called."
    "A great movie"
  end
end

class User
  include Loggable

  def name
    log "name is called."
    "Alice"
  end
end

product = Product.new
product.title
user = User.new
user.name