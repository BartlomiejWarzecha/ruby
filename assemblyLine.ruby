class AssemblyLine
  def initialize(speed)
    @speed = speed
    @int_ceil_speed = @speed.to_i
  end
  def production_rate_per_hour
    unless @speed <= 1 && @speed > 11
    case @speed
     when 0..4
       succes_rate = 1
     when 5..8
       succes_rate = 0.9
     when 9
       succes_rate = 0.8
     when 10
       succes_rate = 0.77
     end

      return @int_ceil_speed * 221 * succes_rate
    end
  end
  def working_items_per_minute
    (production_rate_per_hour/60).to_i
  end
end
