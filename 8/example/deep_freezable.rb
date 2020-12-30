module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      array_or_hash.each do |element|
        # 要素一つ一つをfreeze
        element.freeze
      end
    when Hash
      array_or_hash.each do |key, value|
        # 要素一つ一つをfreeze
        key.freeze
        value.freeze
      end
    end
    # ハッシュまたは配列そのものをfreeze
    array_or_hash.freeze
  end
end