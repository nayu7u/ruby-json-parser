class Parser
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
