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
    #for cat breeds without specific speed computation 
    nil
  end

  def color
    return 'lightning' if @charged
    #if block exists yield catches and executes
    if block_given?
      yield
    end
    #else returns 
    return 'orange white brown and gray'
  end

  private
  #extract method refactoring pattern
  #compute speed based on catnip quantity
  def compute_catnip_speed
    return @base_speed - @load_factor * @ounces_of_catnip
  end

  def compute_base_speed_for_voltage
    [24.0, voltage * @base_speed].min
  end
end
