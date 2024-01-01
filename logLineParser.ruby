class LogLineParser
  def initialize(line)
    @line = line
  end

  def message

    return @line.split(":")[1].strip

  end

  def log_level

    return @line.slice(@line.index('[') + 1, @line.index(']') - 1).downcase

  end

  def reformat

   return %(#message} (#{log_level}))

  end
end
