class Parser
  # TODO: もうちょい良い実装がありそう
  # 引数の文字列の先頭の整数をパースし、結果と残りの文字列を返す
  # @param [String] s 文字列
  # @return [nil, Array<String>]
  def digits(s)
    target = []
    other = []
    is_end = false
    s.split("").each do |c|
      if /\d/.match?(c) && !is_end
        target << c
      else
        other << c
        is_end = true
      end
    end

    if target.size.zero?
      nil
    else
      [target.join, other.join]
    end
  end
end
