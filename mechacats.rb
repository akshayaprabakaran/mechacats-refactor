class Mechacats
  def initialize(type, ounces_of_catnip, voltage, charged)
    @type = type
    @ounces_of_catnip = ounces_of_catnip
    @voltage = voltage
    @charged = charged
  end

  def speed
    case @type
    when :orange_tabby
      return base_speed
    when :bombay
      return [0, base_speed - load_factor * @ounces_of_catnip].max
    when :somali
      return (@charged) ? 0 : compute_base_speed_for_voltage(@voltage)
    end

    nil
  end

  def color
    return 'lightning' if @charged

    if @type == :bombay
      'black'
    elsif @type == :somali
      if @voltage > 5 then return 'orange' end
      if @voltage < 5 then return 'orange and white' end
    else
      'orange white brown and gray'
    end
  end

  private

  def compute_base_speed_for_voltage(voltage)
    [24.0, voltage * base_speed].min
  end

  def load_factor
    9.0
  end

  def base_speed
    12.0
  end
end
