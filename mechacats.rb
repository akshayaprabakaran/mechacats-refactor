class Mechacats
  def initialize(type, ounces_of_catnip, voltage, charged)
    @type = type
    @ounces_of_catnip = ounces_of_catnip
    @voltage = voltage
    @charged = charged
    #refactored private methods to instance variables(private)
    @base_speed = 12.0 
    @load_factor = 9.0
  end

  def speed
    case @type
    when :orange_tabby
      return @base_speed
    when :bombay
      return [0,compute_catnip_speed].max
    when :somali
      return (@charged) ? 0 : compute_base_speed_for_voltage
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
  #extract method refactoring pattern
  #compute speed based on catnip quantity
  def compute_catnip_speed
    return @base_speed - @load_factor * @ounces_of_catnip
  end

  def compute_base_speed_for_voltage
    [24.0, voltage * base_speed].min
  end
end
