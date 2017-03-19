class Object
  def method_missing m, *args, &block
    b = ?\u{1F171}

    return super unless m.to_s.include? b

    e = Regexp.new('^' + Regexp.quote(m.to_s).sub(b, '([cdfgjklmnpqstvz])').gsub(b, '\\\1') + '$')

    if actual = methods.grep(e).first
      send actual, *args, &block
    else
      raise NoMethodError
    end
  end
end
